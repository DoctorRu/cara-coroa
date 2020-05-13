import 'dart:math';

import 'package:caracoroa/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {

    var _itens = ['cara','coroa'];
    var _dice = Random().nextInt(2);
    var _result = _itens[_dice];

    Navigator.push(context, MaterialPageRoute(
        builder: (context) => Result(_result))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
//      backgroundColor: Color.fromRGBO(255, 204, 128, 1),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("images/logo.png"),
              GestureDetector(
                onTap: () {
                  _exibirResultado();
                },
                child: Image.asset("images/botao_jogar.png"),
              )
            ],
          ),
        ));
  }
}
