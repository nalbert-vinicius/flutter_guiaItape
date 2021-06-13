import 'package:flutter/material.dart';
import 'package:flutter_guiaitape/Memorial/imagens.dart';
import 'package:flutter_guiaitape/botao.dart';
import 'package:flutter_guiaitape/Memorial/maps.dart';

class memorial extends StatefulWidget {
  @override
  _memorialState createState() => _memorialState();
}

class _memorialState extends State<memorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Memorial Júlio Preste"),
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
                  Text("Memorial Julio Prestes",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(""),
                  Text("O Monumento aos Prestes de Albuquerque, localizado na Praça do antigo Fórum, na Avenida Peixoto Gomide, no centro da cidade, homenageia o Coronel Fernando Prestes de Albuquerque e seu filho, o itapetiningano Júlio Prestes de Albuquerque. Uma homenagem que o seu povo fez aos seus ilustres representantes políticos de expressão estadual e nacional. Esse monumento é uma obra do escultor Luiz Marrone e que foi inaugurada no dia 5 de novembro de 1953. O monumento é composto por um hemiciclo e uma coluna ao centro. Com mais de três metros de altura e todo em granito, ele contém placas de bronze representando o legado deixado por ambos como políticos."),
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
