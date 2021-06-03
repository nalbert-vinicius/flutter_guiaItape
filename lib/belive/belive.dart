import 'package:flutter/material.dart';
import 'package:flutter_guiaitape/botao.dart';
import 'imagens.dart';


class belive extends StatefulWidget {
  @override
  _beliveState createState() => _beliveState();
}

class _beliveState extends State<belive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Believe Club"),
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
                  Text("Believe Club",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,

                    ),
                  ),
                  Text(""),
                  Text("         Ótimo ambiente e DJS , um lugar bem agradável pra passear com os amigos ou com a namorada ou namorado."),
                  Text(""),
                  Text(""),
                  Text(""),
                  Botao("Localização")
                ],
              )
          ),
        ],
      ),
    );
  }
}
