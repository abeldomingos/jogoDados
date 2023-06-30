import 'package:flutter/material.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
import 'dart:math';


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
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Joguinho Dado')),
        backgroundColor: Colors.red.shade700,
      ),
      backgroundColor: Colors.white,

      body: Column(
        children: [
          SizedBox(
            width: 130,
            height: 140,
            child: Image.asset('imagens/lvai.png'),
          ),
          SizedBox(
            height: 75,
          ),
          Center(
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
          ),
          SizedBox(height: 30,),
          //OPÇÃO OUVIR MUSIC
          Text('Oiça uma música enquanto Jogas',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text('Clique aqui'),
            ),
          ),
        ],
      ),
    );
  }
}
