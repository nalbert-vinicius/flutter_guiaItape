import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class imagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 30),
        CarouselSlider(
            height: 280,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 3/2,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
            items: [
              Container(
                width: 400.0,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("img/museu/museu4.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Container(
                width: 400.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("img/museu/museu5.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Container(
                width: 400.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("img/museu/museu6.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              )
            ]
        )
      ],
    );
  }
}
