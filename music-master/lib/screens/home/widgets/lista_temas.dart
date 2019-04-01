import 'package:flutter/material.dart';
//import 'package:PROYECTO FINAL DE STUDY JAM DE FLUTTER 2019/music-master/screens/home/widgets/tema.dart';

class ListaTemas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text(
              "Rooms",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),
            ),
          ),
          //ListaTemas("assets/images/4.png", "Tema 1"),
          //ListaTemas("assets/images/4.png", "Tema 2"),
          //ListaTemas("assets/images/4.png", "Tema 3"),
          //ListaTemas("assets/images/4.png", "Tema 4"),
        ],
    );
  }
}