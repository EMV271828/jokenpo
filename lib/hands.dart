import 'package:flutter/material.dart';

class hands extends StatelessWidget {
  final String mao;

  const   hands(this.mao, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: Image.asset(
          "images/$mao.png",
          height: 100,
          width: 100,
        ));
  }
}
