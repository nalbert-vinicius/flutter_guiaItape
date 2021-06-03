import 'package:flutter/material.dart';
class Botao extends StatelessWidget {
  final String texto;
  final Function onPressed;
  Botao(this.texto, {this.onPressed});
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: 300,
        height: 50.0,
        child: RaisedButton(
            color: Colors.blue,
            child: Text(
              texto,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),
            ),
            onPressed: onPressed),
      );
  }

}
