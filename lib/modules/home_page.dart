import 'package:flutter/material.dart';
import 'package:gsfiap/components/templage_page.dart';
import 'package:gsfiap/components/template_animatedContainer.dart';
import 'package:gsfiap/components/template_button.dart';
import 'package:gsfiap/components/template_card.dart';
import 'package:gsfiap/models/aluno_model.dart';
import 'package:gsfiap/models/destino_model.dart';
import 'package:gsfiap/utils/padding.dart';

import 'opcionais.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  List<DestinoModel> destinolist = [
    DestinoModel(destino: 'Reino de Marte'),
    DestinoModel(destino: 'Estados Unidos de Marte'),
    DestinoModel(destino: 'Praia Grande de Marte'),
    DestinoModel(destino: 'Guiana Martesa'),
  ];

  @override
  Widget build(BuildContext context) {
    return TemplatePage(
      pageTile: 'Destinos',
      body: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(height: 10),
        const Text('Selecione os destinos:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center),
        const SizedBox(height: 10),
        ListView.separated(
            shrinkWrap: true,
            itemCount: destinolist.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 15),
            itemBuilder: ((context, index) {
              var destinoItems = destinolist[index];
              return CardAnimado(
                  leftText: 'Destino: ', rightText: destinoItems.destino);
            })),
        const SizedBox(height: 20),
        ButtonTemplate(
            buttonText: 'Opcionais',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Opcionais()),
                ),
              );
            })
      ])),
    );
  }
}
