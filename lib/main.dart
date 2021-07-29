import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _numeroAleatorio = 0;
  List _frases = [
    'Guardar raiva é como segurar um carvão em brasa com a intenção de atirá-lo em alguém; é você que se queima.',
    'Em nossas vidas, a mudança é inevitável. A perda é inevitável. A felicidade reside na nossa adaptabilidade em sobreviver a tudo de ruim.',
    'Sua tarefa é descobrir o seu trabalho e, então, com todo o coração, dedicar-se a ele.',
    'Nascemos para morrer, conhecemos pessoas para as deixar e ganhamos coisas para as perder.',
    'Existem três classes de pessoas que são infelizes: a que não sabe e não pergunta, a que sabe e não ensina e a que ensina e não faz.',
    'Jamais, em todo o mundo, o ódio acabou com o ódio. O que acaba com o ódio é o amor.'
  ];

  void _contadorRandom(){
    setState(() => _numeroAleatorio = Random().nextInt(_frases.length));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Ensinamentos Budistas",
          style: TextStyle(
            color: Colors.deepOrange
          )
        ),
        backgroundColor: Colors.white,

      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
      decoration: BoxDecoration(
       // border: Border.all(width: 3, color: Colors.deepOrange)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // atualizar imagem para um logo próprio
          Image.asset("images/logo.png"),
          Text(
            "Clique abaixo para rotacionar as frases!",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic,
              color: Colors.deepOrange
            ),
          ),
          Container(
            child: Text(
              _frases[_numeroAleatorio],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 22,
                fontStyle: FontStyle.italic
              ),
            ),
          ),
          RaisedButton(
            child: Text(
              "Nova Frase",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ) ,
            color: Colors.deepOrange,
            onPressed: _contadorRandom,
          )
        ],
      ),
      ),
    );
  }
}
