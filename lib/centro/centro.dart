import 'package:flutter/material.dart';
import 'package:flutter_guiaitape/centro/imagens.dart';
import 'package:flutter_guiaitape/botao.dart';


class centro extends StatefulWidget {
  @override
  _centroState createState() => _centroState();
}

class _centroState extends State<centro> {
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
                  Text("Centro Cultural",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Text(""),
                  Text(""),
                  Text("  O Centro Cultural e Histórico de Itapetininga Brasílio Ayres de Aguirre foi o primeiro prédio público da cidade, construído na metade do século XIX. A construção original possuía apenas o pavimento térreo, feito de taipa e abrigava a cadeia municipal. Em 1852, com a elevação de Itapetininga a Comarca, foi necessária uma sede para o Poder Judiciário. Para sediar a nova instituição, construiu-se o segundo pavimento no prédio que, além do Fórum, passou também a abrigar a Câmara dos Vereadores. A ampliação do local foi concluída em 1877. O Fórum e a cadeia mudaram-se para novos prédios em 1906 e o local passou a funcionar como Câmara e Prefeitura até 1989, sendo reformado em 1928 pelo então prefeito Pedro Dias Batista. Finalmente, a Câmara e a Prefeitura também foram transferidas para novas construções e, em 1991, o prédio tornou-se o Centro Cultural e Histórico de Itapetininga. O local dispõe de cinco salas, um salão no piso térreo e mais sete salas e um saguão no piso superior"),
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
