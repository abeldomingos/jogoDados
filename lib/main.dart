import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        body: const Dados(),
      ),
    );
  }
}

class Dados extends StatelessWidget {
  const Dados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              print('Botão Esquerdo Apertado');
            },
              child: Image.asset('imagens/dd1.png')),

          const SizedBox(width: 30,),

          TextButton(
            onPressed: () {
              print('Botão Direito Apertado');
            },
              child: Image.asset('imagens/dd1.png')),
        ],
      ),
    );
  }
}

