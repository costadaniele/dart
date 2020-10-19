import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bhaskara',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: const Color(0xFF009688),
        accentColor: const Color(0xFF009688),
        canvasColor: const Color(0xFFfafafa),
        fontFamily: 'Roboto',
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
  TextEditingController _ctrlA = TextEditingController();
  TextEditingController _ctrlB = TextEditingController();
  TextEditingController _ctrlC = TextEditingController();

  var result = " ";

  void calBhaskara() {
    double _a = double.tryParse(_ctrlA.text);
    double _b = double.tryParse(_ctrlB.text);
    double _c = double.tryParse(_ctrlC.text);

    if (_a == null || _b == null || _c == null) {
      setState(() {
        result = "Digite todos os valores";
        SystemChannels.textInput.invokeMethod('TextInput.hide');
      });
    } else {
      var _delta = ((_b * _b) - (4 * _a * _c));
      var _x1;
      var _x2;
      if (_delta < 0) {
        setState(() {
          result = "Δ = $_delta \nNão há raízes para esse delta";
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        });
      } else {
        if (_delta == 0) {
          _x1 = ((-_b + sqrt(_delta)) / (2 * _a));
          setState(() {
            result = "Δ = $_delta \nX' = $_x1";
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          });
        } else {
          _x1 = ((-_b + sqrt(_delta)) / (2 * _a));
          _x2 = ((-_b - sqrt(_delta)) / (2 * _a));
          setState(() {
            result = "Δ = $_delta \nX' = $_x1 \nX'' = $_x2";
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          });
        }
      }
    }
  }

  limpar() {
    setState(() {
      _ctrlA.text = " ";
      _ctrlB.text = " ";
      _ctrlC.text = " ";
      result = " ";
      SystemChannels.textInput.invokeMethod('TextInput.hide');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bhaskara'),
        ),
        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              helperText: "Digite o valor de A",
                              helperStyle: TextStyle(
                                fontSize: 16.0,
                              )),
                          controller: _ctrlA,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto")),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              helperText: "Digite o valor de B",
                              helperStyle: TextStyle(
                                fontSize: 16.0,
                              )),
                          controller: _ctrlB,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto")),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              helperText: "Digite o valor de C",
                              helperStyle: TextStyle(
                                fontSize: 16.0,
                              )),
                          controller: _ctrlC,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: const Color(0xFF000000),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto")),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Colors.teal)),
                          color: Colors.teal,
                          key: null,
                          onPressed: calBhaskara,
                          //color: const Color(0xFFe0e0e0),
                          child: Text(
                            "Calcular",
                            style: TextStyle(
                                fontSize: 17.0,
                                color: const Color(0xFFffffff),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          )),
                      RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          key: null,
                          onPressed: limpar,
                          color: const Color(0xFFe0e0e0),
                          child: new Text(
                            "Limpar",
                            style: new TextStyle(
                                fontSize: 17.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ))
                    ]),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Resultado ",
                      style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      result,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
              ]),
        ));
  }
}
