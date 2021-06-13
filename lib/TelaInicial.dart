import 'package:flutter/material.dart';
import 'package:flutter_guiaitape/botao.dart';
import 'package:flutter_guiaitape/FishingPark/fishPark.dart';
import 'package:flutter_guiaitape/expo/expo.dart';
import 'package:flutter_guiaitape/centro/centro.dart';
import 'package:flutter_guiaitape/MuseuF/museu.dart';
import 'package:flutter_guiaitape/Memorial/memorial.dart';
import 'package:flutter_guiaitape/Catedral/catedral.dart';


class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Guia Itapetininga"),
      ),
      body: _pagina(),

    );
  }


  _pagina(){
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(80),
      // margin: EdgeInsets.all(100),
      child: Column(
        children: [
          Botao("Fishing Park", onPressed: _fishPark,),
          Text(""),
          Botao("Catedral de Nossa Senhora dos Prazeres", onPressed: _catedral,),
          Text(""),
          Botao("Memorial Júlio Prestes de Albuquerque - Itapetininga", onPressed: _memorial,),
          Text(""),
          Botao("Museu Ferroviário de Itapetininga", onPressed: _museu,),
          Text(""),
          Botao("Centro Cultural e Histórico - Brazílio Ayres de Aguirre", onPressed: _centro,),
          Text(""),
          Botao("EXPO AGRO ITAPETININGA",onPressed: _expo,),
          Text(""),
        ],
      ),
    );
  }

  _fishPark() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => fishPark()),
    );
  }


  _expo() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => expo()),
    );
  }


  _centro() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => centro()),
    );
  }

  _museu() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => museuf()),
    );
  }

  _memorial() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => memorial()),
    );
  }

  _catedral() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => catedral()),
    );
  }
}
