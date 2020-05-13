import 'package:flutter/material.dart';

class Result extends StatefulWidget {

  String valor;
  Result(this.valor);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
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
              Image.asset("images/moeda_${widget.valor}.png"),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset("images/botao_voltar.png"),
              )
            ],
          ),
        )
    );
  }
}
