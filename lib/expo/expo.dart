import 'package:flutter/material.dart';
import 'package:flutter_guiaitape/expo/imagens.dart';
import 'package:flutter_guiaitape/botao.dart';
import 'package:flutter_guiaitape/expo/maps.dart';

class expo extends StatefulWidget {
  @override
  _expoState createState() => _expoState();
}

class _expoState extends State<expo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expo Agro"),
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
                  Text("Expo Agro",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(""),
                  Text(" A Expoagro é sem duvida um Patrimônio de Itapetininga, cidade tradicionalmente ligada a Agropecuária e certa tradição Gaucha pela sua proximidade com a Região Sul. Excelente Parque de Diversões, Exposição Completa de Criadores de Bovinos, Equinos, Muares, Ovinos etc. Merece uma visita. O evento acontecerá no Recinto de Exposições “Acácio de Moraes Terra” com área de 360.000 m2, dotado de toda infra-estrutura, compatível aos grandes centros, tem capacidade para 3.000 animais, 160 empresas comerciais e recebe, durante o evento, em torno de 300.000 visitantes e participação total de 800 expositores oriundos de várias partes do país."),
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
