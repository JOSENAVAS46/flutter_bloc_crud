import 'package:flutter_bloc_crud/features/conexion/domain/model/conexion_temperatura_model.dart';
import 'package:flutter_bloc_crud/features/conexion/domain/model/conexion_temperatura_res_model';
import 'package:flutter_bloc_crud/features/conexion/domain/repository/conexion_temperatura_repository.dart';

class ConexionTemperaturaUseCase extends ConexionTemperaturaRepository {
  @override
  Future<ConexionTemperaturaResponseModel> create(
      ConexionTemperaturaModel model) {
    throw UnimplementedError();
  }

  @override
  Future<ConexionTemperaturaResponseModel> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<ConexionTemperaturaResponseModel> getById(int numControl) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<ConexionTemperaturaResponseModel> search(String query) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<ConexionTemperaturaResponseModel> update(
      ConexionTemperaturaModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(int numControl) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
