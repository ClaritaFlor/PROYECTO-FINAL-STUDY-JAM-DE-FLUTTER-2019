import 'package:flutter/material.dart';

class principal extends StatelessWidget {
  static String tag = 'principal';

  @override
  Widget build(BuildContext context) {
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '.::TEMAS SEGUN GENERO::.',
        style: TextStyle(fontSize: 30.0, color: Colors.black87),
      ),
    );

    /*************************** */

    /*************************** */

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[welcome],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}