import 'package:flutter/material.dart';
import 'jokenpo.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Jokenpo"),
      ),
      body: Center(
          child: Column(
        children: [
          const jokenpo()
        ],
      )),
    );
  }
}
