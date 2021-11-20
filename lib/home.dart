

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int  _random_value= 0;
  String _initial_phrase = "Clique no botão, para gerar uma frase";


void _generate_phrase(){
  _random_value = Random().nextInt(_phrases.length);
  setState(() {
    this._initial_phrase = _phrases[_random_value];
  });

}


  final _phrases = [
    "Frase gerada 1",
    "frase gerada 2",
    "frase gerada 3",
    "frase gerada 4"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frase do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _initial_phrase,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize:30,
                  color: Colors.black ,
                ),
              ),
               ElevatedButton(
                  onPressed:_generate_phrase,
                  child: const Text(
                      "Nova frase",
                    style:  TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
