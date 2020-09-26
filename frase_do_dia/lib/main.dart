import 'package:flutter/material.dart';

void main() {
  runApp(MyAppFrase());
}

class MyAppFrase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase do Dia!"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Frase do dia",
              style: new TextStyle(
                  fontSize: 51.0,
                  color: const Color(0xFFffffff),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
                key: null,
                onPressed: null,
                color: const Color(0xFFe0e0e0),
                child: new Text(
                  "Nova Frase",
                  style: new TextStyle(
                      fontSize: 47.0,
                      color: const Color(0xFF731212),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"),
                )),
          ],
        ),
      ),
    );
  }
}
