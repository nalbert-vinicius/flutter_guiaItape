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
                  Text("         O Fishing Park é um lugar completo para você e sua família. Já pensou em um parque que ofereça pescaria, piscinas com parque aquático, campo de vôlei, campo de mallet-golf com 36 buracos, playground, tudo isso em um só lugar ? Esse é o Fishing Park. Fundado em 1997 numa área de 66 hectares, o parque ganhou destaque na região de Itapetininga –SP por ser único. A melhor estrutura cercada pela mais bela paisagem.\n No Fishing Park você e sua família podem desfrutar de várias atrações. Planejado para oferecer lazer para toda família, o Fishing Park possuí piscinas com parque aquático para que a diversão seja completa. Entre uma atração e outra, nada melhor que relaxar e se divertir em nossas piscinas."),
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
