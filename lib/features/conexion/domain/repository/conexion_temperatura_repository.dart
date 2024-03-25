import 'dart:async';
import 'package:flutter_bloc_crud/features/conexion/domain/model/conexion_temperatura_model.dart';
import 'package:flutter_bloc_crud/features/conexion/domain/model/conexion_temperatura_res_model';

abstract class ConexionTemperaturaRepository {
  Future<ConexionTemperaturaResponseModel> getAll();

  Future<ConexionTemperaturaResponseModel> getById(int numControl);

  Future<ConexionTemperaturaResponseModel> create(
      ConexionTemperaturaModel model);

  Future<ConexionTemperaturaResponseModel> update(
      ConexionTemperaturaModel model);

  Future<void> delete(int numControl);

  Future<ConexionTemperaturaResponseModel> search(String query);
}
