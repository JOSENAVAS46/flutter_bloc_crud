part of 'conexion_temperatura_bloc.dart';

@immutable
abstract class ConexionTemperaturaState {}

// Estado inicial
class ConexionTemperaturaInitial extends ConexionTemperaturaState {}

// Estado cargando
class ConexionTemperaturaLoading extends ConexionTemperaturaState {}

// Estados de lectura
class ConexionTemperaturaLoaded extends ConexionTemperaturaState {
  final List<ConexionTemperaturaModel> conexionesTemperatura;

  ConexionTemperaturaLoaded({required this.conexionesTemperatura});
}

class ConexionTemperaturaSelected extends ConexionTemperaturaState {
  final ConexionTemperaturaModel conexionTemperatura;

  ConexionTemperaturaSelected({required this.conexionTemperatura});
}

// Estados de creación
class ConexionTemperaturaCreating extends ConexionTemperaturaState {}

class ConexionTemperaturaCreated extends ConexionTemperaturaState {
  final ConexionTemperaturaModel conexionTemperatura;

  ConexionTemperaturaCreated({required this.conexionTemperatura});
}

// Estados de edición
class ConexionTemperaturaEditing extends ConexionTemperaturaState {}

class ConexionTemperaturaEdited extends ConexionTemperaturaState {
  final ConexionTemperaturaModel conexionTemperatura;

  ConexionTemperaturaEdited({required this.conexionTemperatura});
}

// Estados de eliminación
class ConexionTemperaturaDeleting extends ConexionTemperaturaState {}

class ConexionTemperaturaDeleted extends ConexionTemperaturaState {}


// Estados de búsqueda
class ConexionTemperaturaSearching extends ConexionTemperaturaState {}
class ConexionTemperaturaSearchResults extends ConexionTemperaturaState {
  final List<ConexionTemperaturaModel> respConTemp;

  ConexionTemperaturaSearchResults({required this.respConTemp});
}

// Estado de error
class ConexionTemperaturaError extends ConexionTemperaturaState {
  final String error;

  ConexionTemperaturaError({required this.error});
}

