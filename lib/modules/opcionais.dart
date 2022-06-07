import 'package:flutter/material.dart';
import 'package:gsfiap/models/opcionais_model.dart';
import 'package:gsfiap/modules/passageiros.dart';

import '../components/templage_page.dart';
import '../components/template_animatedContainer.dart';
import '../components/template_button.dart';

class Opcionais extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Opcionais();
  }
}

class _Opcionais extends State {
  List<OpcionaisModel> opcionalList = [
    OpcionaisModel(opcional: 'Marteflix na nave'),
    OpcionaisModel(opcional: 'Tanques de Oxigenio Premium'),
    OpcionaisModel(opcional: 'Strogonoff em capsula'),
    OpcionaisModel(opcional: 'Traje espacial da Lacoste'),
  ];
  @override
  Widget build(BuildContext context) {
    return TemplatePage(
      pageTile: 'Destinos',
      body: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(height: 10),
        const Text('Selecione os opcionais da viagem:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center),
        const SizedBox(height: 10),
        ListView.separated(
            shrinkWrap: true,
            itemCount: opcionalList.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 15),
            itemBuilder: ((context, index) {
              var opcionalItems = opcionalList[index];
              return CardAnimado(
                  leftText: 'Opcional: ', rightText: opcionalItems.opcional);
            })),
        const SizedBox(height: 20),
        ButtonTemplate(
            buttonText: 'Passageiros',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Passageiros()),
                ),
              );
            })
      ])),
    );
  }
}
