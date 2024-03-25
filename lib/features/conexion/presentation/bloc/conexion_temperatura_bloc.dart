import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_crud/features/conexion/domain/model/conexion_temperatura_model.dart';
import 'package:flutter_bloc_crud/features/conexion/domain/useCase/conexion_temperatura_use_case.dart';
import 'package:meta/meta.dart';

part 'conexion_temperatura_event.dart';
part 'conexion_temperatura_state.dart';

class ConexionTemperaturaBloc
    extends Bloc<ConexionTemperaturaEvent, ConexionTemperaturaState> {
  final ConexionTemperaturaUseCase useCase;

  ConexionTemperaturaBloc(this.useCase) : super(ConexionTemperaturaInitial()) {
    on<ConexionTemperaturaLoadAll>(_loadAll);
    on<ConexionTemperaturaSearch>(_search);
    on<ConexionTemperaturaSelect>(_select);
    on<ConexionTemperaturaCreate>(_create);
    on<ConexionTemperaturaEdit>(_edit);
    on<ConexionTemperaturaDelete>(_delete);
  }

  Future<void> _loadAll(ConexionTemperaturaLoadAll event,
      Emitter<ConexionTemperaturaState> emit) async {
    emit(ConexionTemperaturaLoading());
    try {
      final resConTemp = await useCase.getAll();
      emit(ConexionTemperaturaLoaded(
          conexionesTemperatura: resConTemp.conexionTemperaturaData));
    } catch (error) {
      emit(ConexionTemperaturaError(error: error.toString()));
    }
  }

  Future<void> _search(ConexionTemperaturaSearch event,
      Emitter<ConexionTemperaturaState> emit) async {
    emit(ConexionTemperaturaSearching());
    try {
      final respConTemp = await useCase.search(event.query);
      if (respConTemp.conexionTemperaturaData.isNotEmpty) {
        emit(ConexionTemperaturaSearchResults(
            respConTemp: respConTemp.conexionTemperaturaData));
      }
    } catch (error) {
      emit(ConexionTemperaturaError(error: error.toString()));
    }
  }

  Future<void> _select(ConexionTemperaturaSelect event,
      Emitter<ConexionTemperaturaState> emit) async {
    emit(ConexionTemperaturaLoading());
    try {
      final respConTemp = await useCase.getById(event.numControl);
      if (respConTemp.conexionTemperaturaData.isNotEmpty) {
        emit(ConexionTemperaturaSelected(
            conexionTemperatura: respConTemp.conexionTemperaturaData[0]));
      } else {
        emit(ConexionTemperaturaError(error: 'No se encontró la Conexión de Temperatura con el Numero de Control: ${event.numControl}'));
      }
    } catch (error) {
      emit(ConexionTemperaturaError(error: error.toString()));
    }
  }

  Future<void> _create(ConexionTemperaturaCreate event,
      Emitter<ConexionTemperaturaState> emit) async {
    emit(ConexionTemperaturaCreating());
    try {
      final respConTemp = await useCase.create(event.conexionTemperatura);
      emit(ConexionTemperaturaCreated(
          conexionTemperatura: respConTemp.conexionTemperaturaData[0]));
    } catch (error) {
      emit(ConexionTemperaturaError(error: error.toString()));
    }
  }

  Future<void> _edit(ConexionTemperaturaEdit event,
      Emitter<ConexionTemperaturaState> emit) async {
    emit(ConexionTemperaturaEditing());
    try {
      final respConTemp = await useCase.update(event.conexionTemperatura);
      emit(ConexionTemperaturaEdited(
          conexionTemperatura: respConTemp.conexionTemperaturaData[0]));
    } catch (error) {
      emit(ConexionTemperaturaError(error: error.toString()));
    }
  }

  Future<void> _delete(ConexionTemperaturaDelete event,
      Emitter<ConexionTemperaturaState> emit) async {
    emit(ConexionTemperaturaDeleting());
    try {
      await useCase.delete(event.numControl);
      emit(ConexionTemperaturaDeleted());
    } catch (error) {
      emit(ConexionTemperaturaError(error: error.toString()));
    }
  }
}

/*
**Eventos:**

* **ConexionTemperaturaLoadAll:** Carga todas las conexiones_temperatura.
* **ConexionTemperaturaSearch:** Busca conexiones_temperatura por un término.
* **ConexionTemperaturaSelect:** Selecciona una conexión_temperatura por su ID.
* **ConexionTemperaturaCreate:** Crea una nueva conexión_temperatura.
* **ConexionTemperaturaEdit:** Edita una conexión_temperatura existente.
* **ConexionTemperaturaDelete:** Elimina una conexión_temperatura por su ID.

**Estados:**

* **ConexionTemperaturaInitial:** Estado inicial del BLoC.
* **ConexionTemperaturaLoading:** Indica que se están cargando las conexiones_temperatura.
* **ConexionTemperaturaLoaded:** Se han cargado las conexiones_temperatura correctamente.
*/