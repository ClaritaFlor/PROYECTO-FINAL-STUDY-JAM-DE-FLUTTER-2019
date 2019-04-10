import 'package:flutter/material.dart';
import 'principal.dart';
class Login extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginState createState() => new _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent, radius: 110.0, child: Image.asset('assets/logo.png'),
      ),
    );
    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(MusicPlayer.tag);
        },
        padding: EdgeInsets.all(14),
        color: Colors.pink,
        child: Text('INICIAR...!!!', style: TextStyle(color: Colors.white)),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 30.0),
            loginButton,            
          ],
        ),
      ),
    );
  }
}