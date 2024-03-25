part of 'conexion_temperatura_bloc.dart';

@sealed
abstract class ConexionTemperaturaEvent {}

// Eventos de lectura
class ConexionTemperaturaLoadAll extends ConexionTemperaturaEvent {}

class ConexionTemperaturaSearch extends ConexionTemperaturaEvent {
  final String query;

  ConexionTemperaturaSearch({required this.query});
}

class ConexionTemperaturaSelect extends ConexionTemperaturaEvent {
  final int numControl;

  ConexionTemperaturaSelect({required this.numControl});
}

// Eventos de creación
class ConexionTemperaturaCreate extends ConexionTemperaturaEvent {
  final ConexionTemperaturaModel conexionTemperatura;

  ConexionTemperaturaCreate({required this.conexionTemperatura});
}

// Eventos de edición
class ConexionTemperaturaEdit extends ConexionTemperaturaEvent {
  final ConexionTemperaturaModel conexionTemperatura;

  ConexionTemperaturaEdit({required this.conexionTemperatura});
}

// Eventos de eliminación
class ConexionTemperaturaDelete extends ConexionTemperaturaEvent {
  final int numControl;

  ConexionTemperaturaDelete({required this.numControl});
}
