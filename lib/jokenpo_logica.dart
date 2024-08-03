import 'dart:math';

class jokenpoLogica {
  jokenpoLogica._();

  static jogo(Map<String, String> values, String jogada) {

    final Map<int, String> jogadasCpu = {0: "pedra", 1: "papel", 2: "tesoura"};

    var jogadaCpu = jogadasCpu[Random().nextInt(3)];

    values['imagemDaMaquina'] = "images/$jogadaCpu.png";

    if (jogadaCpu == jogada) {
      values['resultado'] = "Empate!";
    } else if (jogadaCpu == 'pedra' && jogada == 'papel' ||
        jogadaCpu == 'tesoura' && jogada == 'pedra' ||
        jogadaCpu == 'papel' && jogada == 'tesoura') {
      values['resultado'] = "Você venceu!";
      values['vitorias'] = (int.parse(values['vitorias']!) + 1).toString();
    } else {
      values['resultado'] = "Você perdeu!";
      values['derrotas'] = (int.parse(values['derrotas']!) + 1).toString();
    }
  }
}
