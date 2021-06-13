import 'package:flutter/material.dart';
import 'package:flutter_guiaitape/MuseuF/imagens.dart';
import 'package:flutter_guiaitape/botao.dart';
import 'package:flutter_guiaitape/MuseuF/maps.dart';


class museuf extends StatefulWidget {
  @override
  _museufState createState() => _museufState();
}

class _museufState extends State<museuf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Museu Ferroviário"),
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
                  Text("Museu Ferroviário",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(""),
                  Text("Itapetininga preserva grande parte dos 145 anos de ferrovia. O Museu Ferroviário, instalado no Clube Atléticos dos Sorocabanos de Itapetininga (CASI), conta com fotografias, pinturas, equipamentos e ferramentas que revivem a história da Sorocabana. No local, que está fechado durante a quarenta, os visitantes podem conhecer uma locomotiva a vapor fabricada na Alemanha em 1912.  “Só tem mais 2 dessa no Brasil”, conta o presidente do Museu Ferroviário, Carlos Eduardo dos Santos."),
                  Text(""),
                  Text(""),
                  Text(""),
                  Text(""),
                  Text(""),
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
