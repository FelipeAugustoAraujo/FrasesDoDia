import "package:flutter/material.dart";
import "dart:math";

void main() {
  runApp(MaterialApp(
    home: const Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

    final _frases = [
    "Alegria",
    "Tristeza",
    "Felicidade",
    "Dinheiro"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                ),
            ),
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.green)
                ),
                onPressed: (){
                  gerarFrase();
                },
                child: const Text(
                    "Clique aqui",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),

              )
          ],
        ),
    
        ),

      );
  }
}