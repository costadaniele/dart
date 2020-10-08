import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyAppFrase());
}

class MyAppFrase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Frase do Dia',
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
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
  var _frases = [
    "A longa jornada até o fim de um capítulo começa com um pequeno passo para o primeiro parágrafo.",
    "Tudo o que se pode fazer com facilidade também deve ser feito com dedicação",
    "Todos nós temos talento em alguma área. Basta descobrir qual.",
    "Experiência é o nome que damos aos nossos erros!",
    "Se você fizer o que sempre fez, receberá o que sempre recebeu.",
    "Nada supera a gentileza. Ser gentil é que é ser forte de fato",
    "O ponto de vista correto para tentar resolver um problema é o ponto de interrogação",
    "Um erro de julgamento pode ser tolerado quando se deixa a razão livre para combatê-lo",
    "Levanta, sacode a poeira, dá a volta por cima.",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Levanta, sacode a poeira, dá a volta por cima.",
    "Dê mais atenção ao que você tem de bom na sua vida.",
    "Para chegar ao topo, o que importa é começar!",
    "Suba o primeiro degrau com fé. Não é necessário que você veja toda a escada, apenas dê o primeiro passo.",
    "De nada adianta ter sonhos, se você não se empenhar em correr atrás.",
    "O otimismo é a fé em ação. Nada se pode levar a efeito sem otimismo.",
    "Não deixe nada, nem ninguém, estragar o seu bom humor.",
    "O seu mau humor não modifica a vida.",
    "Ontem já passou, é hora de planejar o futuro.",
    "Não deixe sua felicidade nas mãos de ninguém!",
    "Você é capaz de escrever a sua nova história todos os dias."
  ];

  var _frasegerada = "Clique em Nova Frase";

  void _gerarFrase() {
    var indice = Random().nextInt(_frases.length);

    setState(() {
      _frasegerada = _frases[indice];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase do Dia"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _frasegerada,
              //"Frase do Dia\n $_frasegerada",
              style: new TextStyle(
                  fontSize: 25.0,
                  color: const Color(0xFFe0e0e0),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
                key: null,
                onPressed: () {
                  _gerarFrase();
                },
                color: const Color(0xFF212121),
                child: new Text(
                  "+",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: const Color(0xFF1f9710),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                )),
          ],
        ),
      ),
    );
  }
}
