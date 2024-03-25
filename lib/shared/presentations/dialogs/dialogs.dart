import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Dialogs {
  static void alert(BuildContext context,
      {String title = '', String message = ''}) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            content: Text(
              message,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop((context));
                  },
                  child: Text("Entendido"))
            ],
          );
        });
  }

  static void confirma(BuildContext context,
      {String message = '',
      required VoidCallback onCancel,
      required VoidCallback onConfrim}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
              elevation: 2,
              title: Row(
                children: <Widget>[
                  Text('Aviso CMRecibo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blue,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.info,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                ],
              ),
              backgroundColor: Colors.white,
              content: Text(
                message,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              actions: <Widget>[
                CupertinoButton(
                    onPressed: onConfrim,
                    child: Text('SI',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18))),
                CupertinoButton(
                    onPressed: onCancel,
                    child: Text('NO',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)))
              ]);
        });
  }

  static void crearcliente(BuildContext context,
      {String title = '',
      String message = '',
      required VoidCallback onConfrim}) {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            content: Text(
              message,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                  onPressed: onConfrim, child: Text("Entendido"))
            ],
          );
        });
  }
}
