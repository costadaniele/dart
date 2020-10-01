import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //variaveis
  int _contador = 0;
  //métodos
  void _contar(int v) {
    setState(() {
      if ((_contador + v) < 0) {
        _contador = 0;
      } else {
        _contador += v;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Contador: $_contador",
              style: new TextStyle(
                  fontSize: 50.0,
                  color: const Color(0xFFd92626),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto"),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new RaisedButton(
                    key: null,
                    onPressed: () {
                      _contar(1);
                    },
                    onLongPress: () {
                      _contar(10);
                    },
                    color: const Color(0xFFe0e0e0),
                    child: new Text(
                      "+",
                      style: new TextStyle(
                          fontSize: 51.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                    )),
                new RaisedButton(
                    key: null,
                    onPressed: () {
                      _contar(-1);
                    },
                    onLongPress: () {
                      _contar(-10);
                    },
                    color: const Color(0xFFe0e0e0),
                    child: new Text(
                      "-",
                      style: new TextStyle(
                          fontSize: 50.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
