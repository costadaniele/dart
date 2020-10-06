import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Celsius Fahrenheit',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFF1f9710),
        canvasColor: const Color(0xFF303030),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _ctrlCelsius = TextEditingController();
  var msgResult = "Fahrenheit...:";

  void calcular() {
    double _celsius = double.tryParse(_ctrlCelsius.text);
    if (_celsius == null) {
      setState(() {
        msgResult = "digite os graus em Celsius";
      });
    } else {
      var fahrenheit = (9 / 5) * _celsius + 32;
      setState(() {
        msgResult = "Fahrenheit: $fahrenheit Graus";
        //para esconder o teclado
        SystemChannels.textInput.invokeMethod('TextInput.hide');
        //import 'package:flutter/services.dart';
      });
    }
  }

  void novo() {
    setState(() {
      _ctrlCelsius.text = " ";
      msgResult = "Fahrenheit:";
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Celsius / Fahrenheit"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //deixa a propriedade para no meio
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              //"Fahrenheit", substituiu o texto pela variável
              msgResult,
              style: new TextStyle(
                  fontSize: 35.0,
                  color: const Color(0xFF7bd025),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Roboto"),
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: _ctrlCelsius,
              //aparece o teclado numérico
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "graus celsius"),
              style: TextStyle(
                  fontSize: 20.0,
                  color: const Color(0xFFe0e0e0),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RaisedButton(
                    onPressed: () {
                      calcular();
                    },
                    color: const Color(0xFF7bd025),
                    child: new Text(
                      " Ok ",
                      style: new TextStyle(
                          fontSize: 31.0,
                          color: const Color(0xFFe0e0e0),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto"),
                    )),
                RaisedButton(
                    onPressed: () {
                      novo();
                    },
                    color: const Color(0xFFe0e0e0),
                    child: new Text(
                      " Novo ",
                      style: new TextStyle(
                          fontSize: 31.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto"),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
