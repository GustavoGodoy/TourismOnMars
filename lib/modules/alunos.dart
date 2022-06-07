import 'package:flutter/material.dart';
import 'package:gsfiap/components/templage_page.dart';
import 'package:gsfiap/components/template_animatedContainer.dart';
import 'package:gsfiap/components/template_button.dart';
import 'package:gsfiap/components/template_card.dart';
import 'package:gsfiap/models/aluno_model.dart';
import 'package:gsfiap/models/destino_model.dart';
import 'package:gsfiap/modules/home_page.dart';
import 'package:gsfiap/modules/login.dart';
import 'package:gsfiap/utils/padding.dart';

import 'opcionais.dart';

class AlunosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlunosPage();
  }
}

class _AlunosPage extends State<AlunosPage> {
  List<AlunoModel> alunoList = [];
  double width = 300;
  double height = 30;
  Color color = Color.fromARGB(255, 172, 131, 55);

  void populate() {
    setState(() {
      alunoList
          .add(AlunoModel(nome: 'Gustavo Godoy de Oliveira', rm: 'RM84427'));
      alunoList.add(AlunoModel(nome: 'Rafael Giovanni Mariano', rm: 'RM86337'));
      alunoList.add(AlunoModel(nome: 'Gustavo dos Santos', rm: 'RM86506'));
      height = 320;
      color = Color.fromARGB(255, 226, 201, 164);
    });
  }

  void clearList() {
    setState(() {
      alunoList.clear();
      height = 30;
      color = Color.fromARGB(255, 172, 131, 55);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TemplatePage(
      pageTile: 'Autores do projeto:',
      body: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(height: 10),
        const Text('Clique na barra para ver os autores:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            if (alunoList.isEmpty) {
              populate();
            } else {
              clearList();
            }
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.decelerate,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 2),
                color: color),
            height: height,
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: alunoList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 15),
                itemBuilder: ((context, index) {
                  var alunoItems = alunoList[index];
                  return CardAnimado(
                      leftText: alunoItems.nome, rightText: alunoItems.rm);
                })),
          ),
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Alunos'),
              content: Column(
                children: const [
                  Text('Gustavo Godoy RM 84227'),
                  Text('Rafael Giovanni RM86337'),
                  Text('Gustavo Santos RM86506')
                ],
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          ),
          child: const Text('Alunos PopUp'),
        ),
        const SizedBox(height: 20),
        ButtonTemplate(
            buttonText: 'Home',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => LoginPage()),
                ),
              );
            })
      ])),
    );
  }
}
