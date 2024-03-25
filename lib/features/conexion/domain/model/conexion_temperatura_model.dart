// To parse this JSON data, do
//
//     final conexionTemperatura = conexionTemperaturaFromJson(jsonString);

import 'dart:convert';

ConexionTemperaturaModel conexionTemperaturaFromJson(String str) => ConexionTemperaturaModel.fromJson(json.decode(str));

String conexionTemperaturaToJson(ConexionTemperaturaModel data) => json.encode(data.toJson());

class ConexionTemperaturaModel {
    int? numControl;
    String? contenedor;
    String? fechaConexion;
    String? horaConexion;
    String? cliente;
    String? nombreCliente;
    double? temperaturaInicial;
    String? fechaDesconexion;
    String? horaDesconexion;
    double? temperaturaFinal;
    String? fechaIng;
    String? maquina;
    String? usuario;
    List<DetalleConexionTemp>? detalleConexionTemp;

    ConexionTemperaturaModel({
        this.numControl,
        this.contenedor,
        this.fechaConexion,
        this.horaConexion,
        this.cliente,
        this.nombreCliente,
        this.temperaturaInicial,
        this.fechaDesconexion,
        this.horaDesconexion,
        this.temperaturaFinal,
        this.fechaIng,
        this.maquina,
        this.usuario,
        this.detalleConexionTemp,
    });

    factory ConexionTemperaturaModel.fromJson(Map<String, dynamic> json) => ConexionTemperaturaModel(
        numControl: json["numControl"],
        contenedor: json["contenedor"],
        fechaConexion: json["fechaConexion"],
        horaConexion: json["horaConexion"],
        cliente: json["cliente"],
        nombreCliente: json["nombreCliente"],
        temperaturaInicial: json["temperaturaInicial"]?.toDouble(),
        fechaDesconexion: json["fechaDesconexion"],
        horaDesconexion: json["horaDesconexion"],
        temperaturaFinal: json["temperaturaFinal"]?.toDouble(),
        fechaIng: json["fechaIng"],
        maquina: json["maquina"],
        usuario: json["usuario"],
        detalleConexionTemp: json["detalleConexionTemp"] == null ? [] : List<DetalleConexionTemp>.from(json["detalleConexionTemp"]!.map((x) => DetalleConexionTemp.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "numControl": numControl,
        "contenedor": contenedor,
        "fechaConexion": fechaConexion,
        "horaConexion": horaConexion,
        "cliente": cliente,
        "nombreCliente": nombreCliente,
        "temperaturaInicial": temperaturaInicial,
        "fechaDesconexion": fechaDesconexion,
        "horaDesconexion": horaDesconexion,
        "temperaturaFinal": temperaturaFinal,
        "fechaIng": fechaIng,
        "maquina": maquina,
        "usuario": usuario,
        "detalleConexionTemp": detalleConexionTemp == null ? [] : List<dynamic>.from(detalleConexionTemp!.map((x) => x.toJson())),
    };
}

class DetalleConexionTemp {
    int? numControl;
    int? linea;
    double? temperatura;
    String? fecha;
    String? hora;
    int? operador;
    String? observacion;

    DetalleConexionTemp({
        this.numControl,
        this.linea,
        this.temperatura,
        this.fecha,
        this.hora,
        this.operador,
        this.observacion,
    });

    factory DetalleConexionTemp.fromJson(Map<String, dynamic> json) => DetalleConexionTemp(
        numControl: json["numControl"],
        linea: json["linea"],
        temperatura: json["temperatura"]?.toDouble(),
        fecha: json["fecha"],
        hora: json["hora"],
        operador: json["operador"],
        observacion: json["observacion"],
    );

    Map<String, dynamic> toJson() => {
        "numControl": numControl,
        "linea": linea,
        "temperatura": temperatura,
        "fecha": fecha,
        "hora": hora,
        "operador": operador,
        "observacion": observacion,
    };
}

