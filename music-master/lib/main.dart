import 'package:flutter/material.dart';
import 'login.dart';
import 'principal.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Login.tag: (context) => Login(), MusicPlayer.tag: (context) => MusicPlayer(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MUSIC',
      theme: ThemeData(
        primarySwatch: Colors.purple, fontFamily: 'Nunito',
      ),
      home: Login(), routes: routes,
    );
  }
}
