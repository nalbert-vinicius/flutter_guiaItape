import 'package:flutter/material.dart';
import 'package:flutter_guiaitape/Catedral/imagens.dart';
import 'package:flutter_guiaitape/botao.dart';
import 'package:flutter_guiaitape/Catedral/maps.dart';


class catedral extends StatefulWidget {
  @override
  _catedralState createState() => _catedralState();
}

class _catedralState extends State<catedral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catedral da Nossa Senhora dos Prazeres"),
      ),
      body: _pagina(),
    );
  }

  _pagina(){
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
              flex: 1,
              child: imagens()
          ),
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Text("Catedral da Nossa Senhora dos Prazeres",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,

                    ),
                  ),
                  Text(""),
                  Text(""),
                  Text("A Catedral é um templo de estilo românico, com formato de cruz latina, com uma torre do lado direito e o batistério do lado esquerdo. Além disso, a Nossa Senhora dos Prazeres é a santa padroeira da cidade."),
                  Text(""),
                  Text(""),
                  Botao("Localização", onPressed: _maps,)
                ],
              )
          ),
        ],
      ),
    );
  }

  _maps() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Maps()),
    );
  }



}
