import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dropdown.dart';

class lome extends StatefulWidget {
  String npt, rc, cl, scl;
  lome(this.npt, this.rc, this.cl, this.scl);
  State<StatefulWidget> createState() {
    return lomePageState();
  }
}

int for_ = 0;
int dex_ = 0;
int con_ = 0;
int hc_ = 0;
int rel_ = 0;
int int_ = 0;
int sab_ = 0;
int eru_ = 0;
int for_mod = 0;
int dex_mod = 0;
int con_mod = 0;
int hc_mod = 0;
int rel_mod = 0;
int int_mod = 0;
int sab_mod = 0;
int eru_mod = 0;
int pv_ = 0;
int armor_ = 0;
int mana_ = 0;
int chi_ = 0;
int control = 0;

var div = [9];
var rng = new Random();
var list = [
  for_,
  con_,
  dex_,
  hc_,
  int_,
  sab_,
  eru_,
  rel_,
  for_mod,
  con_mod,
  dex_mod,
  hc_mod,
  int_mod,
  sab_mod,
  eru_mod,
  rel_mod,
  pv_,
  armor_,
  mana_,
  chi_,
  control
];
String vant_ = '';
String pont_t_ = '';
String move_ = '';

String prehab1_ = '';
String itens1_ = '';

String hab1_ = '';

String itens2_ = '';
String hab2_ = '';

var list_text = [
  vant_,
  pont_t_,
  move_,
  prehab1_,
  itens1_,
  hab1_,
  itens2_,
  hab2_
];

class lomePageState extends State<lome> {
  main() {
    int controldiv = 0;
    if (list[14] != 0) {
      for (var i = 0; i <= 20; i++) {
        list[i] = 0;
      }
    }
    if (widget.rc == "Humano") {
      list[0] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[1] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[2] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[4] += (5 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[8] += (2);
      list[9] += (2);
      list[10] += (2);
      list[12] += (2);

      list_text[0] = "Vantagem de +2 em ModH.C, ModSab, ModEru e ModSor.";
      list_text[1] =
          "Pontos de troca:\n\nFor: 2\nCon: 1\nDes: 2\nH.C: 1\nInt: 1\nSab: 1\nEru: 2\nRel: 1";
      list_text[2] =
          "Movimenta????o: 10.5 metros ou 7 quadrados do grid\nAtaque: 6 metros ou 4 quadrados do grid";
    } else if (widget.rc == "Elfo") {
      list[0] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[1] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[2] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[4] += (5 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[8] += (0);
      list[9] += (0);
      list[10] += (3);
      list[12] += (1);

      list_text[0] =
          "Vantagem em testes de natureza ou afinidade com animais.(Com os do reino de Lux.+4)\nAnimais do reino dos elfos recebem intimidar no primeiro turno onde encontram um elfo.\nVantagem em testes de H.C(ModH.C +3)";
      list_text[1] =
          "Pontos de troca:\n\nFor: 1\nCon: 1\nDes: 3\nH.C: 2\nInt: 1\nSab: 2\nEru: 2\nRel: 0";
      list_text[2] =
          "Movimenta????o: 12 metros ou 8 quadrados do grid\nAtaque: 7.5 metros ou 5 quadrados do grid";
    } else if (widget.rc == "Elfo Negro") {
      list[0] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[1] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[2] += (5 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[4] += (5 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[8] += (1);
      list[9] += (1);
      list[10] += (2);
      list[12] += (0);

      list_text[0] =
          "Audi????o elevada\nVantagem em testes de natureza ou afinidade com animais.\nB??nus de ModH.C +3\nB??nus de ModSab +3\nCapaz de enxergar 'Chi vermelho'";
      list_text[1] =
          "Pontos de troca:\n\nFor: 1\nCon: 1\nDes: 1\nH.C: 2\nInt: 2\nSab: 3\nEru: 2\nRel: 0";
      list_text[2] =
          "Movimenta????o: 12 metros ou 8 quadrados do grid\nAtaque: 7.5 metros ou 5 quadrados do grid";
    } else if (widget.rc == "Fada") {
      list[0] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[1] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);

      list[2] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[4] += (6 +
          (rng.nextInt(11) +
              rng.nextInt(11) +
              rng.nextInt(11) +
              rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[8] += (0);
      list[9] += (0);
      list[10] += (1);
      list[12] += (3);

      list_text[0] =
          "B??nus de mana + 1000 pontos\nB??nus de +3 em ModSab\nAsas que voam at?? 4 metros de altura";
      list_text[1] =
          "Pontos de troca:\n\nFor: 0\nCon: 0\nDes: 2\nH.C: 0\nInt: 3\nSab: 2\nEru: 3\nRel: 1";
      list_text[2] =
          "Movimenta????o, por terra: 10.5 metros ou 7 quadrados do grid\nMovimenta????o, por voo: 21 metros ou 14 quadrados do grid\nAtaque, por terra: 6 metros ou 4 quadrados do grid\nAtaque, por voo: 12 metros ou 8 quadrados do grid";
    } else if (widget.rc == "An??o") {
      list[0] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 18);
      list[1] += (5 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[2] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[4] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[8] += (0);
      list[9] += (4);
      list[10] += (0);
      list[12] += (0);
      list_text[0] =
          "Consegue analisar a resist??ncia (N.R) de itens\nResist??ncia ao ??lcool";
      list_text[1] =
          "Pontos de troca:\n\nFor: 3\nCon: 3\nDes: 1\nH.C: 2\nInt: 0\nSab: 1\nEru: 1\nRel: 0";
      list_text[2] =
          "Movimenta????o: 9 metros ou 6 quadrados do grid\nAtaque: 6 metros ou 4 quadrados do grid";
    } else if (widget.rc == "??pese") {
      list[0] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 18);
      list[1] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[2] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 18);
      list[4] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 18);
      list[8] += (0);
      list[9] += (4);
      list[10] += (0);
      list[12] += (0);
      list_text[0] =
          "Resist??ncia ao fogo e calor.\nEnxerga no escuro.\nHabilidade com magias de fogo e necromancia.(+ 2 de acerto )(+ 25% do dano)\nFacilidade em aprender novas l??nguas.\n4 muta????es a sua escolha";
      list_text[1] =
          "Pontos de troca:\n\nFor: 1\nCon: 3\nDes: 1\nH.C: 3\nInt: 1\nSab: 1\nEru: 2\nRel: 0";
      list_text[2] =
          "Movimenta????o: 10.5 metros ou 7 quadrados do grid\nAtaque: 7 metros ou 5 quadrados do grid";
    } else if (widget.rc == "Fauno") {
      list[0] += (5 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[1] += (6 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[2] +=
          (3 + (rng.nextInt(11) + rng.nextInt(11)) + 18 + (rng.nextInt(19)));
      list[4] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[8] += (0);
      list[9] += (1);
      list[10] += (3);
      list[12] += (0);

      list_text[0] =
          "Audi????o elevada Vantagem\nVantagem em testes de natureza ou afinidade com animais. \n(+6) Animais recebem intimidar a cada turno que enfrentam um fauno.\nPode falar com animais.";
      list_text[1] =
          "Pontos de troca:\n\nFor: 1\nCon: 2\nDes: 3\nH.C: 1\nInt: 1\nSab: 3\nEru: 2\nRel: 1";
      list_text[2] =
          "Movimenta????o: 15 metros ou 10 quadrados do grid\nAtaque: 9 metros ou 6 quadrados do grid";
    } else if (widget.rc == "Meio-Gigante") {
      list[0] += (6 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[1] += (5 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[2] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[4] += (2 + (rng.nextInt(11) + rng.nextInt(11)));
      list[8] += (3);
      list[9] += (3);
      list[10] += (0);
      list[12] += (-2);
      list_text[0] = "M??nimo de 2.5 metros de altura";
      list_text[1] =
          "Pontos de troca:\n\nFor: 4\nCon: 3\nDes: 1\nH.C: 2\nInt: 0\nSab: 0\nEru: 0\nRel: 0";
      list_text[2] =
          "Movimenta????o: 9 metros ou 6 quadrados do grid\nAtaque: 6 metros ou 4 quadrados do grid";
    } else if (widget.rc == "Orc") {
      list[0] += (5 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[1] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[2] += (2 + 9 + (rng.nextInt(11) + rng.nextInt(11)));
      list[4] += (2 + (rng.nextInt(11) + rng.nextInt(11)));
      list[8] += (4);
      list[9] += (4);
      list[10] += (-2);
      list[12] += (-2);
      list_text[0] =
          "Fraqueza contra magia (100% de dano adicional)\nHabilidade com armas de for??a (+5 ModH.C)\nDesvantagem de perda de 50% da mana total";
      list_text[1] =
          "Pontos de troca:\n\nFor: 3\nCon: 4\nDes: 1\nH.C: 2\nInt: 0\nSab: 0\nEru: 0\nRel: 0";
      list_text[2] =
          "Movimenta????o: 9 metros ou 6 quadrados do grid\nAtaque: 6 metros ou 4 quadrados do grid";
    } else if (widget.rc == "Homem-Macaco") {
      list[0] += (4 +
          (rng.nextInt(11) +
              rng.nextInt(11) +
              rng.nextInt(11) +
              rng.nextInt(11)) +
          18);
      list[1] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[2] += (6 +
          18 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[4] += (2 + 9 + (rng.nextInt(11) + rng.nextInt(11)));
      list[8] += (2);
      list[9] += (0);
      list[10] += (4);
      list[12] += (0);
      list_text[0] = "B??nus +3 H.C";
      list_text[1] =
          "Pontos de troca:\n\nFor: 1\nCon: 1\nDes: 3\nH.C: 1\nInt: 1\nSab: 1\nEru: 1\nRel: 3";
      list_text[2] =
          "Movimenta????o: 15 metros ou 10 quadrados do grid\nAtaque: 9 metros ou 6 quadrados do grid";
    } else if (widget.rc == "Meio-Le??o") {
      list[0] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[1] += (4 +
          (rng.nextInt(11) +
              rng.nextInt(11) +
              rng.nextInt(11) +
              rng.nextInt(11)) +
          18);
      list[2] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 18);
      list[4] += (2 + (rng.nextInt(11) + rng.nextInt(11)));
      list[8] += (2);
      list[9] += (2);
      list[10] += (0);
      list[12] += (0);
      list_text[0] = "B??nus +3 H.C";
      list_text[1] =
          "Pontos de troca:\n\nFor: 2\nCon: 3\nDes: 1\nH.C: 2\nInt: 1\nSab: 1\nEru: 1\nRel: 1";
      list_text[2] =
          "Movimenta????o: 9 metros ou 6 quadrados do grid\nAtaque: 6 metros ou 4 quadrados do grid";
    } else if (widget.rc == "Meio-Drag??o") {
      list[0] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[1] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[2] += (2 + (rng.nextInt(11) + rng.nextInt(11)));
      list[4] += (2 + (rng.nextInt(11) + rng.nextInt(11)));
      list[8] += (2);
      list[9] += (2);
      list[10] += (0);
      list[12] += (0);

      list_text[0] =
          "Met??lico: Resist??ncia elevada/ armadura corporal (1d4-1 + 1/5 mod de con)\nSabedoria e intelig??ncia alta (+3 ModSab e ModInt)\nAlta constitui????o (+4 de ModCon)\nPac??fico \nDesvantagem em des (-4 ModDes)\nSofre 25% de dano extra do calor e do fogo\nB??nus de +2 (ModH.C)\nSopros:\nSopro de luz: 4d6+4(+ 1d8 de dano para cada 30 pontos de con) (C.A 18)\nSopro de eletricidade: 4d4 +4 e chance de paralisar parcialmente o alvo por 1d4 turnos. (+ 1d4 dedano a cada 25 pontos de mod) (C.A do dano, 16 em des)(C.A da paralisia parcial, 16 em con, C.A 16)\nCrom??tico: Alto poder de ataque (+3 de ModFor)\nViol??ncia no sangue (+5 de H.C)\nSente cheiro de sangue Capaz de perceber o qu??o algu??m est?? ferido.\nDesvantagem em ModDes (-2)\nResist??ncia ao elemento do drag??o(reduz o dano em 2d8)\nSopros: Sopro g??lido: 3d8 e -2 de Des no alvo (+ 1d4 de dano para cada 20 pontos de con, efeitoacumulativo) (C.A 18) (C.A 20)\nSopro flamejante: 3d8 e -2 de Con (+ 1d6 a cada 25 pontos de con, efeito acumulativo) (C.A 13)(C.A20)\nSopro ??cido: 1d6 por 1d4 turnos e -3 de Con(+ 1 de dano a cada 30 pontos de con, efeitoacumulativo) (C.A 18 de acerto) (C.A 20 de resist??ncia)\nSopro el??trico: 3d6 e chance de paralisar parcialmente o alvo por 1d4 turnos. (+ 1d4 de dano a cada25 pontos de con) (C.A 15 de acerto) (C.A 14 da paralisia parcial, C.A p??s paralisia 13)\nSopro de vento: 3d12 de dano + chance de quebrar parte de armadura ou desarmar. (1d8 a cada 25pontos) (1d100, resultado igual ao n??mero do dado (-N.R -Con do alvo x3) > N.R dl alvo)(C.A 18)\nSopro de g??s ??cido: 1d6 por 1d4 -1 turnos>0 e -2 de ModCon(+ 1d4 a cada 25 pontos e ??? 2 de ModCon a cada 50 pontos de con, efeito acumulativo)(C.A 22)(C.A 20)";
      list_text[1] =
          "Pontos de troca:\n\nFor: 2\nCon: 2\nDes: 0\nH.C: 2\nInt: 2\nSab: 1\nEru: 2\nRel: 1";
      list_text[2] =
          "Movimenta????o: 9 metros ou 6 quadrados do grid\nAtaque: 6 metros ou 4 quadrados do grid";
    } else if (widget.rc == "Metamorfo") {
      list[0] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[1] += (5 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[2] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[4] += (5 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          9 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[8] += (0);
      list[9] += (0);
      list[10] += (2);
      list[12] += (2);
      list_text[0] =
          "Pode mudar de forma para algo que imagine. (sofre de limites por, sempre deve manter as seguintes caracter??sticas: ter apenas dois olhos, ter 4 membros, manter a estrutura interna semelhante a humana; por ter de manter a massa corporal; por perder a transforma????o ao sofrer qualquer tipo de dano ou tenha sua concentra????o desestabilizada) (Menos ou 1 metro de mudan??a= 1d4 turnos de transforma????o, a cada 1 metro de mudan??a adiciona-se 1d4 turnos) (Durante a volta a forma normalrepete-se o tempo de transforma????o)\nEnxerga no escuro e tem vis??o sens??vel.\nTem dificuldade em enxergar na luz.(ModDes -4 enquanto sob luz normal, cai pela metade quandosob ataques de luz )\nSofre o 150% do dano durante a mudan??a de forma";
      list_text[1] =
          "Pontos de troca:\n\nFor: 0\nCon: 0\nDes: 1\nH.C: 0\nInt: 1\nSab: 2\nEru: 1\nRel: 5";
      list_text[2] =
          "Movimenta????o: 12 metros ou 8 quadrados do grid\nAtaque: 7.5 metros ou 5 quadrados do grid";
    }
    if (widget.cl == "Guerreiro") {
      list[3] += (6 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)) +
          27 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[5] += (2 + (rng.nextInt(19)) + 9 + (rng.nextInt(7)));
      list[6] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[7] += (1 + (rng.nextInt(11)) + 9);
      list[8] += (3);
      list[9] += (1);
      list[10] += (0);
      list[12] += (1);
      list[18] += (500);
      list[19] += (4);
      list_text[3] = 'Uma magia iniciais.(+ 1 por aprimoramento)';
      list_text[4] =
          'Kit de guerreiro:\n\nUma arma branca de ferro ou duas de bronze.(exceto armas pesadas)\n(10 esp)(N.R 20) (4 armor)Armaduras comuns(Corrente).\nMochilaM (30 esp -12).\n(6 esp)( 3 litros)Cantil de ferroP.\n3x(2 esp)(1 dia)Ra????o';

      if (widget.scl == "Paladino") {
        list[9] += 3;
        list[18] += 500;

        list_text[5] =
            'Cura da divindade:\n\nO paladino pode, esticando a m??o em dire????o ao alvo, conjurando uma luz que curando-o.\nAlcance: 9 metros(6 quadrados)\nTempo de conjura????o: Um turno.\nEfeito em n??meros: Cura 8 + 3d6 de vida.\nCusto: 75 de mana.\nM??o da divindade:\n\nO paladino pode conjurar a sua divindade com uma prece para ter uma a????o b??nus no seu turno.\nAlcance: ---\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: Uma a????o b??nus para fazer qualquer a????o livre.\nCusto: 150 de mana. ';
        list_text[6] =
            'Kit de paladino:\n\n(50 esp )(N.R 30) (-4 des)(8 armor)Armaduras comuns(Bronze).\n(30 esp)(N.R 35 ) (+3 de defesa -6 de des)Escudo m??dio de bronze.\nUma arma branca de ferro.';
      } else if (widget.scl == "Cavaleiro") {
        list[9] += 3;
        list[15] += 3;
        list_text[5] =
            'O campe??o pode usar armas pesadas com 100 de for??a(em vez de 150)\n\nDefesa da honra:\n\nO cavaleiro pode endurecer um escudo ou arma branca para facilitar a defesa de golpes.\nAlcance:---\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: Aumenta a chance de defesa em +2.\nCusto: 100 de mana.';
        list_text[6] =
            'Kit de cavaleiro:\n\nUm cavalo(Custa 1P.O).\n(50 esp )(N.R 30) (-4 des)(8 armor)Armaduras comuns(Bronze).\n(30 esp)(N.R 35 ) (+3 de defesa -6 de des)Escudo m??dio de bronze.\nUma arma branca de ferro';
      } else if (widget.scl == "Campe??o") {
        list[8] += 2;
        list[11] += 3;
        list[9] += 1;
        list_text[5] =
            'A????o violenta:\n\nO campe??o pode aumentar o dano de qualquer golpe f??sico envolvendo a ???arma??? com uma luz vermelho claro\nAlcance:---\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: Aumenta do dano de qualquer golpe f??sico em 3 +2d4\nCusto: 75 de mana';
        list_text[6] = 'Uma arma branca comum de a??o';
      } else if (widget.scl == "Berseker") {
        list[8] += 3;
        list[11] += 2;
        list[9] += 2;
        list_text[5] =
            'Ira descontrolada:\n\nO berseker pode limpar a sua mente do medo, da dor, de pensamentos ou qualquer coisa. Com isso ganha vantagens em combate.\nAlcance:---\nTempo de conjura????o: Instant??neo.\nDura????o: 1d4+1 turnos\nEfeito em n??meros: O berseker que usar essa habilidade vai continuar atacando o ??ltimo alvo sem\nceder a qualquer dano. Seus atributos se tornam inalter??veis para menos nesse tempo.\nCusto: 100 de mana.';
        list_text[6] =
            'Dois machados de guerra de ferro ou duas ma??as de guerra de ferro.';
      } else if (widget.scl == "Duelista") {
        list[10] += 3;
        list[11] += 3;
        list_text[5] =
            'Senhor da batalha:\n\nO duelista ganha uma segunda rolagem para um ataque de arma branca.\nAlcance:---\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: O duelista pode usar essa habilidade para ter uma segunda rolagem em um\nataque de arma branca.\nCusto: 150 de mana.';
        list_text[6] =
            'Kit de duelista:\n\n(N.R 36) (13 esp)(1d8 + 1/6 destreza)(acerto +1)Florete\n(10 esp)(N.R 20) (4 armor)Armaduras comuns(Corrente)';
      }
    } else if (widget.cl == "Monge") {
      list[3] += (5 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[5] += (6 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7) + rng.nextInt(7)));
      list[6] +=
          (3 + (rng.nextInt(19) + rng.nextInt(19)) + 18 + (rng.nextInt(7)));
      list[7] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[8] += (3);
      list[9] += (2);
      list[10] += (0);
      list[12] += (0);
      list[18] += (250);
      list[19] += (6);
      list_text[3] =
          'Quatro habilidades de Chi ou magias iniciais.(+ 2 por aprimoramento)\n\nHabilidade:\n\nPunho de lan??a:\nOs golpes f??sicos do monge causam danos como uma espada longa de a??o.\n';
      list_text[4] =
          'Kit de monge:\n\n3x(2 esp)(1 dia)Ra????o\n(5esp)(10 bolas de metal)Saco de bolas de metal.\nMochilaG (40 esp -31 ).\n3x(5 esp por metro) Corda grossa por metro.\n(5 esp)Um saco de dormir.';

      if (widget.scl == "Monge do punho") {
        list[11] += 3;
        list[9] += 3;
        list_text[5] =
            'Dom??nio do corpo e da mente:\n\nO punho do monge pode concentrar Chi para aumentar o dano em 2d6 e fechar um ponto de Chi do alvo.\nAlcance:---\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: O monge pode dar um golpe brutal que pode fechar um ponto de Chi do alvo\ncom uma C.A de 12 + ?? ModConCusto:---';
      } else if (widget.scl == "Monge da arma") {
        list[11] += 3;
        list[10] += 3;
        list_text[5] =
            'Arma de Chi:\n\nO monge pode invocar uma arma de Chi que age igual uma arma comum de a??o.\nAlcance:---\nTempo de conjura????o: Um turno completo.\nEfeito em n??meros: O monge pode criar uma arma ap??s pagar um ponto de Chi, com essa arma\ntodos os seus golpes podem tirar um ponto de Chi do alvo com C.A de 12 + ?? ModCon.\nCusto:---';
        list_text[6] = 'Uma arma comum de ferro';
      } else if (widget.scl == "Monge vermelho") {
        list[11] += 3;
        list[8] += 3;
        list_text[5] =
            'Todos os ataques causam 150% do dano final ap??s as somas.\nAo tirar 1 na rolagem do D20 sofre todo o dano que seria ou ser?? causado ao inimigo.\n\nEnergia da destrui????o:\n\nO monge pode conjurar uma energia de cor vermelha que pode ser disparada de sua m??o e causa\ndano e enfraquece o alvo.\nAlcance: 9 metros(6 quadrados)\nTempo de conjura????o: Um turno completo.\nEfeito em n??meros: O monge pode disparar uma energia que causa 5 +2d6 de dano com C.A de 10 +\n?? ModDes. O acerto reduz todos os atributos do alvo em 2 e tem C.A de 14 de ModCon.\nCusto:---';
      } else if (widget.scl == "Monge azul") {
        list[14] += 3;
        list[10] += 3;
        list[18] += 1000;
        list_text[5] =
            'Pode melhorar suas magias usando pontos de Chi.\n\nGolpe mental:\n\nO monge pode desenhar um s??mbolo no ar usando dois dedos da m??o e com isso causar um dano\nmental no alvo.\nAlcance: 12 metros(8 quadrados)\nTempo de conjura????o: Um turno completo.\nEfeito em n??meros: O monge pode causar um dano direto na mente do alvo causando 15 de dano\ncom C.A de 12 + ?? ModInt.\nCusto: 100 de mana.';
        list_text[6] =
            '(3 esp)Luva arcana com cristal de mira (acerto +2)\n3x(2 esp)(M)Po????o de mana(150 pontos de mana)';
      }
    } else if (widget.cl == "Ladino") {
      list[3] += (3 + (rng.nextInt(9) + rng.nextInt(9)) + 9 + (rng.nextInt(5)));
      list[5] += (4 +
          (rng.nextInt(5)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7) + rng.nextInt(7)));
      list[6] += (2 + 9 + (rng.nextInt(7) + rng.nextInt(7)));
      list[7] += (3 + (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)) + 27);
      list[8] += (0);
      list[9] += (2);
      list[10] += (0);
      list[12] += (3);
      list[18] += (1000);
      list[19] += (2);

      list_text[3] = 'Duas magias iniciais.(+ 1 por aprimoramento)';
      list_text[4] =
          'Kit de ladino:\n\nMochilaM (30 esp -24).\n(3 esp)Um martelo.\n(1 esp)Um vergalh??o de ferro\n3x(2 esp)(1 dia)Ra????o\n(N.R 25) (9 esp)(1d6 + 1/6 destreza ou for??a) Adaga de Ferro\n(5 esp)Um saco de dormir.';

      if (widget.scl == "Ladr??o") {
        list[10] += 3;
        list_text[5] =
            'M??o fantasma:\n\nO ladr??o cria uma m??o de vento e mana que facilita furtos.\nAlcance: 3 metros(2 quadrados)\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: Vantagem em testes de furto.Custo: 125 de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Assassino") {
        list[10] += 3;
        list_text[5] =
            'M??o fantasma:\n\nO ladr??o cria uma m??o de vento e mana que facilita furtos.\nAlcance: 3 metros(2 quadrados)\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: Vantagem em testes de furto.Custo: 125 de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Invasor") {
        list[10] += 3;
        list_text[5] =
            'Senhor das travas:\n\nO invasor pode manusear as ferramentas de destrancar (Qualquer ferramenta dessa classe) atrav??s de magia para facilitar a a????o.\nAlcance:---\nTempo de conjura????o: 10 minutos\nEfeito em n??meros: O invasor pode ganhar uma vantagem em testes de destrancar (Al??m da\nvantagem das ferramentas) e um b??nus de +2.\nCusto: 75 pontos de mana';
        list_text[6] =
            'Kit de invasor:\n\nMochilaG (40 esp)\n3x(5 esp por metro) Corda grossa por metro\n(10 esp)Ferramentas de destrancar.(Vantagem em testes de destrancar)\n(5 esp por metro) Corda grossa por metro\n(9 esp)P?? de cabra(Vantagem em testes de arrombamento)\n(5 esp)Saco de polvora\n(6 esp)(3 litros)Garrafa de ??leo.';
      } else if (widget.scl == "Ninja") {
        list[10] += 3;
        list_text[5] =
            'Ocultar-se nas sombras:\n\nO ninja pode conjurar uma escurid??o que o garante b??nus de furtividade em locais escuros.\nAlcance: 1,5 metros de raio(1 quadrado)\nTempo de conjura????o: Um turno completo.\nEfeito em n??meros: O ninja ganha um b??nus de +4 em furtividade por 15 minutos.\nCusto: 50 pontos de mana.';
        list_text[6] =
            'Kit de ninja:\n\n(5 esp)Saco de dormir.\n(N.R 38) (24 esp)(1d12 + 1/6 for??a) (Esmagamento +1) Espada longa de ferro\n(1 esp)(3 metros de raio)Bomba de fuma??a: 10 P.P\n(5esp)(10 bolas de metal)Saco de bolas de metal: 10 P.P';
      }
    } else if (widget.cl == "Ca??ador") {
      list[3] +=
          (3 + (rng.nextInt(11)) + 9 + (rng.nextInt(9) + rng.nextInt(9)));
      list[5] += (6 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(7) + rng.nextInt(7)) +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[6] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[7] += (2 + (rng.nextInt(9) + rng.nextInt(9)));
      list[8] += (0);
      list[9] += (2);
      list[10] += (2);
      list[12] += (1);
      list[18] += (1500);
      list[19] += (3);

      list_text[3] = 'Tr??s magias iniciais.(+ 2 por aprimoramento)';
      list_text[4] =
          'Kit de ca??ador:\n\nUma fera aliada(dentro do julgamento do mestre)\nMochilaM (30 esp-21)\n(5 esp)Saco de dormir\n3x(2 esp)(1 dia)Ra????o\n3x(1 esp)(P)Po????o de cura(6 pontos de dano)\n(24 esp)Aljava de couro (M)(24 esp)\n(N.R 26)(7 esp)(1d8 + 1/6 des)(Acerto +1)Arco longo';

      if (widget.scl == "Patrulheiro") {
        list[14] += 6;
        list_text[5] =
            'Raio coletor:\n\nO patrulheiro torna o aroma de ervas curativas vis??vel atrav??s de sua mana.\nAlcance: 6 metros de raio(4 quadrados)\nTempo de conjura????o: 5 minutos.\nEfeito em n??meros: O patrulheiro facilita a busca de ervas curativas em uma ??rea de 6*2xpi.\nCusto: 50 pontos de mana.';
        list_text[6] =
            'Kit de patrulheiro:\n\n3x(1 esp)(P)Po????o de cura(6 pontos de dano)\n10x(1 esp)Ervas de cura(3 pontos de dano)\n(1 esp por metro)Linha de costura.';
      } else if (widget.scl == "Domador de feras") {
        list[10] += 3;
        list[14] += 3;
        list_text[5] =
            'Fera suprema:\n\nO domador de feras pode aumentar os atributos de uma fera aliada.\nAlcance:---\nTempo de conjura????o: Um turno completo.\nEfeito em n??meros: A fera ganha +1 em todos os atributos e ganha mais 10% da vida m??xima.\nCusto: 150 pontos de mana.';
        list_text[6] =
            'Kit de domador de feras:\n\nUma fera aliada(dentro do julgamento do mestre)';
      } else if (widget.scl == "Rastreador") {
        list[10] += 3;
        list[14] += 3;
        list_text[5] =
            'Sentidos afiados:\n\nO rastreador pode elevar os seus 5 sentidos para ganhar vantagem em testes de rastreamento.\nAlcance:---\nTempo de conjura????o: 5 minutos.\nEfeito em n??meros: O rastreador ganha vantagem em testes de rastreamento.\nCusto: 50 pontos de mana.';
        list_text[6] =
            'Kit de rastreador:\n\n3x(2 esp)(1 litro)??leo cheiroso.\n(2 esp)Lupa.';
      }
    } else if (widget.cl == "Alquimista") {
      list[3] += (2 + (rng.nextInt(9) + rng.nextInt(9)));
      list[5] += (5 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)) +
          27 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[6] += (6 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          36 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[7] += (3 + (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[8] += (0);
      list[9] += (2);
      list[10] += (3);
      list[12] += (0);
      list[18] += (1500);
      list[19] += (2);

      list_text[3] =
          'Quatro c??rculos de alquimia ou magias iniciais.(+ 2 por aprimoramento)';
      list_text[4] =
          'Kit de alquimista:\n\nMochila de viajante (100 esp-51)\n3x(2 esp)(1 dia)Ra????o\n(18 esp)(18 litros)Cantil de ferroGG\n(N.R 23)(9 esp)(1d4 + 1/6 for??a ou destreza)Adaga de bronze\n3x(2 esp)(M)Po????o de cura(12 pontos de dano)\n3x(2 esp)(M)Po????o de mana(150 pontos de mana)\n3x(2 esp)(P)Fogo alquimico.';

      if (widget.scl == "Herbologista") {
        list[10] += 3;
        list[14] += 3;
        list_text[5] =
            'Sementes instant??neas:\n\nO herbologista pode transformar uma erva em uma semente que rende duas ervas em um dia.\nAlcance:---\nTempo de conjura????o: 5 minutos.\nEfeito em n??meros: O herbologista pode transformar uma erva em uma semente que rende duas\nervas em um dia.\nCusto: 75 pontos de mana.';
        list_text[6] =
            'Kit de herbologista:\n\n3x(1 esp)Ervas de cura(3 pontos de dano)\n3x(1 esp)Ervas de mana(15 pontos de mana)\n(1 esp)Pil??o de madeira.\n(15 esp)Ferramentas de trabalho com ervas.';
      } else if (widget.scl == "Golenmancer") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Animar golens:\n\nO golenmancer pode dar vida a poucos quilos de madeira.\nAlcance:---\nTempo de conjura????o: 1 hora\nEfeito em n??meros: O golenmancer pode, atrav??s de um c??rculo de invoca????o e a a????o do alquimista,\ncriar uma criatura aliada de madeira.\nCusto: 250 pontos de mana.';
        list_text[6] =
            'Kit de golenmancer:\n\n(25 esp)Ferramentas de fabrica????o de golens.(Permite a confec????o de golens superiores)';
      } else if (widget.scl == "Curandeiro") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Dom natural:\n\nO curandeiro pode aumentar o efeito de itens de cura.\nAlcance:---\nTempo de conjura????o: 10 minutos.\nEfeito em n??meros: O curandeiro pode aumentar o poder de cura de seus itens em 1d10.\nCusto: 75 pontos de mana.';
        list_text[6] =
            'Kit de curandeiro:\n\n3x(1 esp)Ervas de cura(3 pontos de dano)\n3x(1 esp)Ervas de mana(15 pontos de mana)\n3x(1 esp)Pomadas de cura(10 pontos de vida em 1 hora)\n(1 esp)Pil??o de madeira.\n(15 esp)Ferramentas de trabalho com ervas.\n(1 esp por metro)Linha de costura';
      }
    } else if (widget.cl == "Mago") {
      list[3] += (2 + (rng.nextInt(9) + rng.nextInt(9)));
      list[5] += (5 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          36 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[6] += (7 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)) +
          27 +
          (rng.nextInt(7) + rng.nextInt(7) + rng.nextInt(7)));
      list[7] += (2 + (rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[8] += (0);
      list[9] += (3);
      list[10] += (3);
      list[12] += (0);
      list[18] += (2500);
      list[19] += (2);

      list_text[3] = 'Cinco magias iniciais.(+ 3 por aprimoramento)';
      list_text[4] =
          'Kit de mago:\n\nMochilaM (30 esp ???19)\n(24 esp)Cajado de carvalho sem pedra(acerto +1)\n3x(1 esp)(P)Po????o de cura(6 pontos de dano)\n3x(2 esp)(M)Po????o de mana(150 pontos de mana)\n(10 esp) Grim??rio comum';

      if (widget.scl == "Mago s??bio") {
        list[12] += 2;
        list[14] += 4;

        list_text[5] =
            'Livraria arcana:\n\nO mago s??bio pode conjurar em suas m??os um livro de energia com todo o seu conhecimento para\nlembrar de coisas especificas.\nAlcance:---\nTempo de conjura????o: Depende.\nEfeito em n??meros: Vantagem em testes de erudi????o.\nCusto: 75 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Mago azul") {
        list[12] += 3;
        list[10] += 3;
        list_text[5] =
            'Caso o mago azul sofra a a????o de alguma magia ele a aprende com 10% de pot??ncia\n\nAprendizado estendido:\n\nO mago azul pode, por meio de medita????o, ampliar o conhecimento de uma magia adquirida e tornar ela n??vel 1.\nAlcance:---\nTempo de conjura????o: Um dia.\nEfeito em n??meros: Tornar uma magia aprendida nv1.\nCusto: 150 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Mago celeste") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Raios c??smicos:\n\nO mago celeste cria uma fenda dimensional com a ponta dos dois dedos que libera a energia contidano sol.Alcance: 15 metros(10 quadrados)\nTempo de conjura????o: Um turno completo.\nEfeito em n??meros: Libera-se uma rajada de energia de C.A 14 + 1/4ModDes que causa 14 +3d8 dedano.\nCusto: 200 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Necromante") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Reanimar cad??veres:\n\nO necromante pode esticar as duas m??os e fazer um corpo pequeno se erguer e obedecer acomandos.\nAlcance: 3 metros(2 quadrados)\nDura????o: 1h e 30m\nTempo de conjura????o: Um turno completo.\nEfeito em n??meros: O necromante pode esticar as duas m??os e fazer um corpo pequeno se erguer eobedecer comandos.\nCusto: 75 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Psiquico") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Degenera????o mental:\n\nO psipico pode esticar as suas m??os para a dire????o do alvo e focar o seu olhar nele para causar umenorme dano a sua mente.\nAlcance: 6 metros(4 quadrados)\nTempo de conjura????o: Um turno completo.\nEfeito em n??meros: Pode-se causar 10 de dano e reduzir todos os modificadores do alvo em ???2. C.A10 + ?? Int\nCusto: 150 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Ilusionista") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Imagem falsa:\n\nO ilusionista faz um movimento com a m??o e cria uma distor????o na luz que faz imagens falsas.\nAlcance: 3 metros(2 quadrados)\nTempo de conjura????o: ---\nDura????o: At?? o fim do combate ou 5 minutos.\nEfeito em n??meros: O conjurador pode fazer uma ilus??o visual de C.A fixo de 14.\nCusto: 50 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Invocador") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Invoca????o: Javali:\n\nO invocador pode esticar as m??os para a frente e formar um circulo m??gico no ch??o invocando umjavali.\nAlcance: 3 metros(2 quadrados)\nTempo de conjura????o: Um turno completo.\nDura????o: ---\nEfeito em n??meros: O invocador invoca um javali controlado pelo mago. Ele obedece ao conjurador.\nCusto: 50 pontos de mana por tuno.';
        list_text[6] = '';
      }
    } else if (widget.cl == "Feiticeiro") {
      list[3] += (2 + (rng.nextInt(9) + rng.nextInt(9)) + 9);
      list[5] += (5 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[6] +=
          (3 + (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) + 9);
      list[7] += (6 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7) + rng.nextInt(7)));
      list[8] += (0);
      list[9] += (3);
      list[10] += (2);
      list[12] += (1);
      list[18] += (2000);
      list[19] += (2);
      list_text[3] = 'Duas magias iniciais.(+ 2 por aprimoramento)';
      list_text[4] =
          'Kit de feiticeiro:\n\nMochilaM (30 esp - 7)\n(1 esp)Varinha m??gica(acerto +1)\n3x(2 esp)(1 dia)Ra????o';
      if (widget.scl == "Elementalista") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Dobra de elemento: Ar, pancada.\n\nO elementalista pode emitir uma press??o intensa da palma de suas duas m??os que causa dano edeixa o alvo tonto.\nAlcance: 4.5 metros(3 quadrados)\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: O alvo sofre b??nus negativo de ???3 em destreza e habilidade de combate e sofre3 + 1d10 de dano.\nCusto: 100 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Ilusionista") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Roubo de aten????o:\n\nO ilusionista faz um movimento com a m??o e o alvo sofre desvantagem na proxima rolagem.\nAlcance: 3 metros(2 quadrados)\nTempo de conjura????o: Instant??neo.\nEfeito em n??meros: O alvo sofre desvantagem na pr??xima a????o se n??o passar em um teste de C.A de10 + ?? Int.\nCusto: 100 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Psiquico") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Troca de pensamentos:\n\nO psipico pode transferir ideias para a mente do alvo atrav??s de uma troca de olhares.\nAlcance: 6 metros(4 quadrados)\nTempo de conjura????o: A????o b??nus.\nEfeito em n??meros: Pode-se transferir uma frase, imagem, ideia etc por meio de um olhar.(6 segundos)\nCusto: 50 pontos de mana.';
        list_text[6] = '';
      } else if (widget.scl == "Arcanista") {
        list[12] += 3;
        list[14] += 3;
        list_text[5] =
            'Rajada destruidora:\n\nO arcanista libera da palma de suas duas m??os uma forte rajada de energia azul destruidora.\nAlcance: 12 metros(8 quadrados)\nTempo de conjura????o: Um turno.\nEfeito em n??meros: Dispara uma onda de energia que gasta mana proporcionalmente ao dano quepode causar. C.A 8 + ?? ModDes. Dano base de 5, cada up aumenta em 5 o dano at?? um m??ximo de35.\nCusto: 50 pontos de mana por up.\n';
        list_text[6] = '';
      }
    } else if (widget.cl == "Bruxo") {
      list[3] +=
          (3 + (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) + 18);
      list[5] += (6 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7) + rng.nextInt(7)));
      list[6] += (6 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7) + rng.nextInt(7)));
      list[7] += (6 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7) + rng.nextInt(7)));
      list[8] += (2);
      list[9] += (2);
      list[10] += (2);
      list[12] += (2);
      list[18] += (2000);
      list[19] += (3);
      list_text[3] = 'Quatro magias iniciais.(+ 3 por aprimoramento)';
      list_text[4] =
          'Kit de bruxo:\n\nMochilaG (40 esp-12 -45).\nQualquer arma n??o pesada.\n(45 esp)(N.R 40) (+4 de defesa ???7 de des)Escudo grande de bronze.\n(6 esp)( 3 litros)Cantil de ferroP.\n3x(2 esp)(1 dia)Ra????o';
      list_text[5] = '';
      list_text[6] = '';
    } else if (widget.cl == "Xam??") {
      list[3] +=
          (3 + (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) + 18);
      list[5] += (5 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7) + rng.nextInt(7)));
      list[6] += (6 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[7] += (3 + (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[8] += (1);
      list[9] += (2);
      list[10] += (2);
      list[12] += (0);
      list[18] += (2000);
      list[19] += (2);
      list_text[3] =
          'Quatro magias iniciais.(+ 2 por aprimoramento)\n\nFamiliar natural:\n\nO xam?? conjura um familiar\nAlcance:---\nTempo de conjura????o: Um turno.\nDura????o: At?? ser desfeita ou a criatura morrer.\nEfeito em n??meros: O xam?? conjura um familiar com atributos a ser discutido.\nCusto: 200 pontos de mana.';
      list_text[4] =
          'Kit de Xam??:MochilaP\n(20 esp -6 -24)(6 esp)\n(3 litros)Cantil de couroP(24 esp)Cajado de carvalho sem pedra(acerto +1)';
      list_text[5] = '';
      list_text[6] = '';
    } else if (widget.cl == "Druida") {
      list[3] += (5 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[5] += (7 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          27 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[6] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[7] += (3 + (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[8] += (2);
      list[9] += (1);
      list[10] += (2);
      list[12] += (0);
      list[18] += (1500);
      list[19] += (3);
      list_text[3] =
          'Tr??s magias iniciais.(+ 2 por aprimoramento)\n\nForma animal: urso.\n\nO druida pode se tornar parcialmente um animal feroz para ganhar seus atributos.\nAlcance:---\nTempo de conjura????o: instant??neo.\nDura????o: At?? o fim do combate ou 5 minutos.\nEfeito em n??meros: O druida ganha 18 de for??a e pode usar as garras como uma espada longa deferro.\nCusto: 100 pontos de mana.';
      list_text[4] =
          'Kit de druida:\n\nMochilaP (20 esp ???12-24)\n3x(2 esp)(1 dia)Ra????o\n(6 esp)(3 litros)Cantil de couroP\n(24 esp)Cajado de carvalho sem pedra(acerto +1)';
      list_text[5] = '';
      list_text[6] = '';
    } else if (widget.cl == "Bardo") {
      list[3] += (2 + (rng.nextInt(11)) + 9 + (rng.nextInt(7)));
      list[5] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[6] += (2 + (rng.nextInt(9) + rng.nextInt(9)));
      list[7] += (5 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          45 +
          (rng.nextInt(9) + rng.nextInt(9)));
      list[8] += (0);
      list[9] += (0);
      list[10] += (0);
      list[12] += (5);
      list[18] += (500);
      list[19] += (1);
      list_text[3] =
          'Duas magias iniciais.(+ 1 por aprimoramento)\n\nCanto do conquistador:\n\nO bardo canta uma doce melodia que encanta todos que ouvirem.\nAlcance: 12 metros(8 quadrados)\nTempo de conjura????o: Um turno.\nDura????o: At?? o fim do combate ou 5 minutos.\nEfeito em n??meros: O bardo ganha vantagem em testes de sorte com quem ouvir o som de suamelodia.\nCusto: 50 pontos de mana por up.';
      list_text[4] =
          'Kit de bardo:\n\nMochilaG (40 esp -32)\nUm instrumento musical a escolha do jogador e aprova????o do mestre.\n(9 esp)(9 litros)Cantil de couroG.\n5x (2 esp)(1 dia)Ra????o.\n(N.R 36) (13 esp)(1d8 + 1/6 destreza)(acerto +1)Florete';
      list_text[5] = '';
      list_text[6] = '';
    } else if (widget.cl == "M??gico") {
      list[3] += (2 + (rng.nextInt(9) + rng.nextInt(9)));
      list[5] += (2 + (rng.nextInt(11)) + 9 + (rng.nextInt(7)));
      list[6] += (4 +
          (rng.nextInt(11) + rng.nextInt(11)) +
          18 +
          (rng.nextInt(7) + rng.nextInt(7)));
      list[7] += (7 +
          (rng.nextInt(11) + rng.nextInt(11) + rng.nextInt(11)) +
          36 +
          (rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9) + rng.nextInt(9)));
      list[8] += (0);
      list[9] += (0);
      list[10] += (1);
      list[12] += (4);
      list[18] += (500);
      list[19] += (1);
      list_text[3] =
          'Duas magias iniciais.(+ 2 por aprimoramento)\n\nEnganar trouxas:\n\n O m??gico pode criar ilus??es de fuma??a e luz para confundir as pessoas.\nAlcance:---\nTempo de conjura????o: Um turno.\nDura????o: At?? o fim do combate ou 5 minutos.Efeito em n??meros: O m??gico pode criar ilus??es de fuma??a e luz para confundir as pessoas.\nCusto: 25 pontos de mana.';
      list_text[4] =
          'Kit de bardo:\n\nMochilaG (40 esp -32)\nUm instrumento musical a escolha do jogador e aprova????o do mestre.\n(9 esp)(9 litros)Cantil de couroG.\n5x (2 esp)(1 dia)Ra????o.\n(N.R 36) (13 esp)(1d8 + 1/6 destreza)(acerto +1)Florete';
      list_text[5] = '';
      list_text[6] = '';
    }

    var balenc_div = 0;
    var balenc_div2 = 0;

    for (var i = 0; i <= 7; i++) {
      if (list[i] <= 81) {
        controldiv = 9;
        balenc_div = 0;
        balenc_div2 = 0;
      } else if (list[i] <= 145) {
        controldiv = 8;
        balenc_div = 81;
        balenc_div2 = 9;
      } else if (list[i] <= 194) {
        controldiv = 7;
        balenc_div = 145;
        balenc_div2 = 17;
      } else if (list[i] <= 230) {
        controldiv = 6;
        balenc_div = 194;
        balenc_div2 = 24;
      } else if (list[i] <= 255) {
        controldiv = 5;
        balenc_div = 230;
        balenc_div2 = 30;
      } else if (list[i] <= 271) {
        controldiv = 4;
        balenc_div = 255;
        balenc_div2 = 35;
      } else if (list[i] <= 280) {
        controldiv = 3;
        balenc_div = 271;
        balenc_div2 = 39;
      } else if (list[i] <= 284) {
        controldiv = 2;
        balenc_div = 280;
        balenc_div2 = 42;
      } else if (list[i] <= 285) {
        controldiv = 1;
        balenc_div = 284;
        balenc_div2 = 44;
      }

      list[i + 8] +=
          (((list[i] - balenc_div) / controldiv).round() + balenc_div2);
    }

    return list;
  }

  Widget build(BuildContext context) {
    main()[20];
    var f_ = list[0];
    var c_ = list[1];
    var d_ = list[2];
    var hc_ = list[3];
    var i_ = list[4];
    var s_ = list[5];
    var e_ = list[6];
    var r_ = list[7];
    var f_m_ = list[8];
    var c_m_ = list[9];
    var d_m_ = list[10];
    var hc_m_ = list[11];
    var i_m_ = list[12];
    var s_m_ = list[13];
    var e_m_ = list[14];
    var r_m_ = list[15];
    var pv_ = list[16];
    var ar_ = list[17];
    var mn_ = list[18];
    var ch_ = list[19];
    var control_ = list[20];
    var vant_n = list_text[0];
    var pont_t_n = list_text[1];
    var move_n = list_text[2];
    var prehab1_n = list_text[3];
    var itens1_n = list_text[4];
    var hab1_n = list_text[5];
    var itens2_n = list_text[6];
    var hab2_n = list_text[7];
    return Scaffold(
      backgroundColor: Colors.redAccent[35],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Center(
            child: new Text('Ficha do jogador', textAlign: TextAlign.center)),
      ),
      body: Center(
        child: Container(
          child: InteractiveViewer(
            child: ListView(
              children: [
                SizedBox(height: 30),
                new Container(
                  height: 25,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                  )),
                  margin: const EdgeInsets.only(top: 0.0, bottom: 30),
                  child: Text(
                    widget.npt,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                    softWrap: false,
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 10.0),
                        child: Text(
                          widget.rc,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 0.0),
                        child: Text(
                          widget.cl,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Text(
                        widget.scl,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Corpo',
                      softWrap: false,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'For:\n' +
                              f_.toString() +
                              '(' +
                              (f_m_).toString() +
                              ')',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Con:\n' +
                              c_.toString() +
                              '(' +
                              (c_m_).toString() +
                              ')',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Des:\n' +
                              d_.toString() +
                              '(' +
                              (d_m_).toString() +
                              ')',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      'Mente',
                      style: TextStyle(fontSize: 20),
                      softWrap: false,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Int:\n' +
                                i_.toString() +
                                '(' +
                                (i_m_).toString() +
                                ')',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                            softWrap: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Sab:\n' +
                                s_.toString() +
                                '(' +
                                (s_m_).toString() +
                                ')',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                            softWrap: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Eru:\n' +
                                e_.toString() +
                                '(' +
                                (e_m_).toString() +
                                ')',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      'Miscel??nia',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          'H.C:\n' +
                              hc_.toString() +
                              '(' +
                              (hc_m_).toString() +
                              ')',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Rel:\n' +
                              r_.toString() +
                              '(' +
                              (r_m_).toString() +
                              ')',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Valores Dinamicos',
                      style: TextStyle(fontSize: 20),
                      softWrap: false,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Text(
                            'Pontos de dano:' +
                                ((rng.nextInt(9)) + 1 + (f_ + c_ + d_) ~/ 3)
                                    .toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 22),
                            softWrap: false,
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Text(
                            'Armadura:' + armor_.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                            softWrap: false,
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'Mana:' + mn_.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          'Chi:' + ch_.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          move_n,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          prehab1_n,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          hab1_n,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          itens1_n,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          itens2_n,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Text(
                          pont_t_n,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
