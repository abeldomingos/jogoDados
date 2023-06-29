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
        body:  Dados(),
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
  var numerodado = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                numerodado = 2;
              },
              child: Image.asset('imagens/dd$numerodado.png')),

          const SizedBox(width: 30,),

          TextButton(
              onPressed: () {
                // print('Botão Direito Apertado');
              },
              child: Image.asset('imagens/dd1.png')),
        ],
      ),
    );
  }
}


