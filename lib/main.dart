import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Calculadora(),
    );
  } 
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
  }

class _CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text ('Calculadora'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
              child: Text(
                '0',
                style: TextStyle(fontSize: 48.0),
              ),
            ),
          ),
          buildRow(['7','8','9','/']),
          buildRow(['4','5','6','x']),
          buildRow(['1','2','3','-']),
          buildRow(['.','0','00','+']),
          buildRow(['C','=']),
        ],
      ),
    ),
    );
  }

  Widget buildRow(List<String> buttons){
    return Expanded(
      child: Row(
        children: buttons
          .map((buttonText) => Expanded(
            child: Container(
              color: buttonText ==  '=' ? Colors.blue : buttonText == 'C' ? Colors.red : Colors.grey,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  buttonText,
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),   
              ),
            ),
          ))
        .toList(),
        ),
      );
  }
}
  