import 'package:flutter/material.dart';
import 'package:jokenpo/hands.dart';
import 'jokenpo_logica.dart';

class jokenpo extends StatefulWidget {
  const jokenpo({super.key});

  @override
  State<StatefulWidget> createState() => _jokenpoState();
}

class _jokenpoState extends State<jokenpo> {
  Map<String, String> valores = {
    'imagemDaMaquina': "images/default.png",
    'resultado': "Escolha uma opção!",
    'vitorias': '0',
    'derrotas': '0'
  };

  jogada(String mao) {
    setState(() {
      jokenpoLogica.jogo(valores, mao);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Center(
                child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: const Text(
                'PLACAR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Text('Vitórias: ${valores['vitorias']}',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                    child: Text('Derrotas: ${valores['derrotas']}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
              ],
            )
          ],
        ))),
        Container(
            margin: EdgeInsets.all(20),
            child: const Text("Escolha do App",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
        Image.asset(
          valores['imagemDaMaquina']!,
          // fit: BoxFit.fill,
          width: 250,
          height: 250,
        ),
        Container(
            margin: EdgeInsets.all(50),
            child: Text(valores['resultado']!,
                style: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold))),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  jogada('pedra');
                },
                child: const hands('pedra')),
            GestureDetector(
                onTap: () {
                  jogada('papel');
                },
                child: const hands('papel')),
            GestureDetector(
                onTap: () {
                  jogada('tesoura');
                },
                child: const hands('tesoura'))
          ],
        )
      ],
    );
  }
}
