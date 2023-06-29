import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Joguinho Dados'),
          ),
          backgroundColor: Colors.red.shade800,
        ),
        backgroundColor: Colors.white,
        body:  const Dados(),
      ),
    );
  }
}

class Dados extends StatefulWidget {
  const Dados({Key? key}) : super(key: key);

  @override
  State<Dados> createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  var numerodadoesquerdo = 1;
  var numerodadodireito = 1;

  void ExecutarDados() {
    setState(() {
      numerodadoesquerdo = Random().nextInt(6) + 1;
      numerodadodireito = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
               ExecutarDados();
              },
              child: Image.asset('imagens/dd$numerodadoesquerdo.png')),

          const SizedBox(width: 30,),

          TextButton(
              onPressed: () {
               ExecutarDados();
              },
              child: Image.asset('imagens/dd$numerodadodireito.png')),
        ],
      ),
    );
  }
}


