import 'package:flutter/material.dart';
import 'package:jogodados/pages/Layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.06, -1.00),
                end: Alignment(0.06, 1),
                colors: [Color(0xFFAC141A), Color(0xFFE01F37)],
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 220,
              height: 260,
              child: Image.asset('imagens/lvaai.png'),
            ),
          ),

         //BOTÃO JOGAR
          //BUTTOM START
          Padding(
            padding: const EdgeInsets.only(
              top: 495,
            ),
            child: Center(
              child: Container(
                width: 195,
                height: 46,
                padding: const EdgeInsets.symmetric(
                    horizontal: 52, vertical: 6),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFFFFF), //AZUL
                  // color: Color(0xFFE9791A) //lARANJA
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>  Dados()),
                          );
                        },
                        child: const Text(
                          'Jogar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xEA000000),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.28,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
