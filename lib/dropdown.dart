import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'home.dart';

var lis = ['d'];
var lis2 = ['d'];
String dropdownValue = 'Raça';
String dropdownValue2 = 'Classe';
String dropdownValue3 = 'Sub-classe';
var rng = new Random();
int controlval = 0;
main() {
  if (dropdownValue2 == 'Guerreiro') {
    lis = [
      'Sub-classe',
      'Paladino',
      'Cavaleiro',
      'Campeão',
      'Berseker',
      'Duelista',
    ];
    return lis;
  } else if (dropdownValue2 == 'Monge') {
    lis = [
      'Sub-classe',
      'Monge do punho',
      'Monge da arma',
      'Monge vermelho',
      'Monge azul',
    ];
    return lis;
  } else if (dropdownValue2 == 'Ladino') {
    lis = [
      'Sub-classe',
      'Ladrão',
      'Assassino',
      'Invasor',
      'Ninja',
    ];
    return lis;
  } else if (dropdownValue2 == 'Caçador') {
    lis = [
      'Sub-classe',
      'Patrulheiro',
      'Domador de feras',
      'Rastreador',
    ];
    return lis;
  } else if (dropdownValue2 == 'Alquimista') {
    lis = [
      'Sub-classe',
      'Herbologista',
      'Golenmancer',
      'Curandeiro',
    ];
    return lis;
  } else if (dropdownValue2 == 'Mago') {
    lis = [
      'Sub-classe',
      'Mago sábio',
      'Mago azul',
      'Mago celeste',
      'Necromante',
      'Psiquico',
      'Ilusionista',
      'Invocador',
    ];
    return lis;
  } else if (dropdownValue2 == 'Feiticeiro') {
    lis = [
      'Sub-classe',
      'Elementalista',
      'Ilusionista',
      'Psiquico',
      'Arcanista',
    ];
    return lis;
  } else if (dropdownValue2 == 'Bruxo') {
    lis = [
      'Sub-classe',
      'Noone',
    ];
    return lis;
  } else if (dropdownValue2 == 'Xamã') {
    lis = [
      'Sub-classe',
      'Noone',
    ];
    return lis;
  } else if (dropdownValue2 == 'Druida') {
    lis = [
      'Sub-classe',
      'Noone',
    ];
    return lis;
  } else if (dropdownValue2 == 'Bardo') {
    lis = [
      'Sub-classe',
      'Noone',
    ];
    return lis;
  } else if (dropdownValue2 == 'Mágico') {
    lis = [
      'Sub-classe',
      'Noone',
    ];
    return lis;
  } else {
    lis = [
      'Sub-classe',
    ];
    return lis;
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<Home> {
  final nomedoplayer = TextEditingController();

  void dispose() {
    // Clean up the controller when the widget is disposed.
    nomedoplayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[35],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: new Center(
            child: new Text('Gerador de ficha do jogador',
                textAlign: TextAlign.center)),
      ),
      body: Center(
        child: new Container(
            child: ListView(
          children: <Widget>[
            new Container(
              width: 300,
              child: new Image.asset('images/pao-0001.png'),
            ),
            new Container(
              width: 100,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nome do personagem',
                ),
                style: const TextStyle(color: Colors.black, fontSize: 20),
                controller: nomedoplayer,
              ),
            ),
            new DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(
                Icons.theater_comedy,
                color: Colors.black,
              ),
              iconSize: 26,
              elevation: 26,
              style: const TextStyle(color: Colors.black, fontSize: 20),
              underline: Container(
                height: 4,
                color: Colors.black,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>[
                'Raça',
                'Humano',
                'Elfo',
                'Elfo Negro',
                'Fada',
                'Anão',
                'Épese',
                'Fauno',
                'Meio-Gigante',
                'Orc',
                'Homem-Macaco',
                'Meio-Leão',
                'Meio-Dragão',
                'Metamorfo'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
            ),
            new DropdownButton<String>(
              value: dropdownValue2,
              icon: const Icon(
                Icons.theater_comedy,
                color: Colors.black,
              ),
              iconSize: 26,
              elevation: 26,
              style: const TextStyle(color: Colors.black, fontSize: 20),
              underline: Container(
                height: 4,
                color: Colors.black,
              ),
              onChanged: (String? newValue2) {
                dropdownValue3 = 'Sub-classe';
                setState(() {
                  dropdownValue2 = newValue2!;
                });
              },
              items: <String>[
                'Classe',
                'Guerreiro',
                'Monge',
                'Ladino',
                'Caçador',
                'Alquimista',
                'Mago',
                'Feiticeiro',
                'Bruxo',
                'Xamã',
                'Druida',
                'Bardo',
                'Mágico'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            new DropdownButton<String>(
              value: dropdownValue3,
              icon: const Icon(
                Icons.theater_comedy,
                color: Colors.black,
              ),
              iconSize: 26,
              elevation: 26,
              style: const TextStyle(color: Colors.black, fontSize: 20),
              underline: Container(
                height: 4,
                color: Colors.black,
              ),
              onChanged: (String? newValue3) {
                setState(() {
                  dropdownValue3 = newValue3!;
                });
              },
              items: main().map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ElevatedButton.icon(
              label: Text(
                'Gerar ficha',
                style: TextStyle(color: Colors.black),
              ),
              icon: Icon(
                Icons.arrow_downward_sharp,
                color: Colors.black,
              ),
              onPressed: () {
                main();
                var racas = [
                  'Humano',
                  'Elfo',
                  'Elfo Negro',
                  'Fada',
                  'Anão',
                  'Épese',
                  'Fauno',
                  'Meio-Gigante',
                  'Orc',
                  'Homem-Macaco',
                  'Meio-Leão',
                  'Meio-Dragão',
                  'Metamorfo'
                ];
                var classas = [
                  'Guerreiro',
                  'Monge',
                  'Ladino',
                  'Caçador',
                  'Alquimista',
                  'Mago',
                  'Feiticeiro',
                  'Bruxo',
                  'Xamã',
                  'Druida',
                  'Bardo',
                  'Mágico'
                ];

                String racas_ = racas[rng.nextInt(12)];
                String classas_ = classas[rng.nextInt(11)];
                String sclassas_ = 'dsad';

                main2() {
                  if (classas_ == 'Guerreiro') {
                    lis2 = [
                      'Sub-classe',
                      'Paladino',
                      'Cavaleiro',
                      'Campeão',
                      'Berseker',
                      'Duelista',
                    ];
                    return lis2;
                  } else if (classas_ == 'Monge') {
                    lis2 = [
                      'Sub-classe',
                      'Monge do punho',
                      'Monge da arma',
                      'Monge vermelho',
                      'Monge azul',
                    ];
                    return lis2;
                  } else if (classas_ == 'Ladino') {
                    lis2 = [
                      'Sub-classe',
                      'Ladrão',
                      'Assassino',
                      'Invasor',
                      'Ninja',
                    ];
                    return lis2;
                  } else if (classas_ == 'Caçador') {
                    lis2 = [
                      'Sub-classe',
                      'Patrulheiro',
                      'Domador de feras',
                      'Rastreador',
                    ];
                    return lis2;
                  } else if (classas_ == 'Alquimista') {
                    lis2 = [
                      'Sub-classe',
                      'Herbologista',
                      'Golenmancer',
                      'Curandeiro',
                    ];
                    return lis2;
                  } else if (classas_ == 'Mago') {
                    lis2 = [
                      'Sub-classe',
                      'Mago sábio',
                      'Mago azul',
                      'Mago celeste',
                      'Necromante',
                      'Psiquico',
                      'Ilusionista',
                      'Invocador',
                    ];
                    return lis2;
                  } else if (classas_ == 'Feiticeiro') {
                    lis2 = [
                      'Sub-classe',
                      'Elementalista',
                      'Ilusionista',
                      'Psiquico',
                      'Arcanista',
                    ];
                    return lis2;
                  } else if (classas_ == 'Bruxo') {
                    lis2 = [
                      'Sub-classe',
                      'Noone',
                    ];
                    return lis2;
                  } else if (classas_ == 'Xamã') {
                    lis2 = [
                      'Sub-classe',
                      'Noone',
                    ];
                    return lis2;
                  } else if (classas_ == 'Druida') {
                    lis2 = [
                      'Sub-classe',
                      'Noone',
                    ];
                    return lis2;
                  } else if (classas_ == 'Bardo') {
                    lis2 = [
                      'Sub-classe',
                      'Noone',
                    ];
                    return lis2;
                  } else if (classas_ == 'Mágico') {
                    lis2 = [
                      'Sub-classe',
                      'Noone',
                    ];
                    return lis2;
                  }
                }

                main2();

                if (classas_ == classas[0]) {
                  sclassas_ = lis2[rng.nextInt(4) + 1];
                } else if (classas_ == classas[1]) {
                  sclassas_ = lis2[rng.nextInt(3) + 1];
                } else if (classas_ == classas[2]) {
                  sclassas_ = lis2[rng.nextInt(3) + 1];
                } else if (classas_ == classas[3]) {
                  sclassas_ = lis2[rng.nextInt(2) + 1];
                } else if (classas_ == classas[4]) {
                  sclassas_ = lis2[rng.nextInt(2) + 1];
                } else if (classas_ == classas[5]) {
                  sclassas_ = lis2[rng.nextInt(5) + 1];
                } else if (classas_ == classas[6]) {
                  sclassas_ = lis2[rng.nextInt(3) + 1];
                } else if (classas_ == classas[7]) {
                  sclassas_ = lis2[1];
                } else if (classas_ == classas[8]) {
                  sclassas_ = lis2[1];
                } else if (classas_ == classas[9]) {
                  sclassas_ = lis2[1];
                } else if (classas_ == classas[10]) {
                  sclassas_ = lis2[1];
                } else if (classas_ == classas[11]) {
                  sclassas_ = lis2[1];
                }
                ;
                var npt = nomedoplayer.text;
                var rc = dropdownValue;
                var cl = dropdownValue2;
                var scl = dropdownValue3;
                print(nomedoplayer.text);
                if (dropdownValue != 'Raça' &&
                    dropdownValue2 != 'Classe' &&
                    dropdownValue3 != 'Sub-classe') {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => lome(npt, rc, cl, scl)),
                    );
                  });
                } else if (dropdownValue == 'Raça' &&
                    dropdownValue2 != 'Classe' &&
                    dropdownValue3 != 'Sub-classe') {
                  print(racas_);
                  print(classas_);
                  print(sclassas_);
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => lome(npt, racas_, cl, scl)),
                    );
                  });
                } else if (dropdownValue == 'Raça' &&
                    dropdownValue2 == 'Classe' &&
                    dropdownValue3 == 'Sub-classe') {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              lome(npt, racas_, classas_, sclassas_)),
                    );
                  });
                } else if (dropdownValue == 'Raça' &&
                    dropdownValue2 != 'Classe' &&
                    dropdownValue3 == 'Sub-classe') {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              lome(npt, racas_, cl, sclassas_)),
                    );
                  });
                } else if (dropdownValue != 'Raça' &&
                    dropdownValue2 != 'Classe' &&
                    dropdownValue3 == 'Sub-classe') {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => lome(npt, rc, cl, sclassas_)),
                    );
                  });
                  print(racas_);
                } else if (dropdownValue != 'Raça' &&
                    dropdownValue2 == 'Classe' &&
                    dropdownValue3 == 'Sub-classe') {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              lome(npt, rc, classas_, sclassas_)),
                    );
                  });
                }
              },
            ),
          ],
        )),
      ),
    );
  }
}
