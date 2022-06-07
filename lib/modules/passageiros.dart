import 'package:flutter/material.dart';
import 'package:gsfiap/components/template_card.dart';
import 'package:gsfiap/models/passageiro_model.dart';
import 'package:gsfiap/utils/padding.dart';

import '../components/templage_page.dart';
import '../components/template_textform.dart';

class Passageiros extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Passageiros();
  }
}

class _Passageiros extends State {
  List<PasssageiroModel> passageiroList = [];
  FocusNode sobrenomeNode = FocusNode();
  FocusNode nomeNode = FocusNode();
  TextEditingController sobrenomeController = TextEditingController();
  TextEditingController nomeController = TextEditingController();

  addPassageiro({
    required String nome,
    required String sobrenome,
  }) {
    setState(
      () {
        passageiroList.insert(
          0,
          PasssageiroModel(
            nome: nome,
            sobrenome: sobrenome,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addPassageiro(
              nome: nomeController.text, sobrenome: sobrenomeController.text);
        },
        child: const Icon(Icons.add),
      ),
      body: TemplatePage(
        pageTile: 'Passageiros',
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: GlobalPadding.passageirosPadding,
              right: GlobalPadding.passageirosPadding,
              top: GlobalPadding.passageirosPadding,
            ),
            child: Column(
              children: [
                const Text('Adicione os Passageiros:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center),
                const SizedBox(height: 20),
                TextFormTemplate(
                    label: 'Digite o nome do passageiro!',
                    focusNode: nomeNode,
                    input: nomeController,
                    onEditingComplete: () {
                      nomeNode.nextFocus();
                    }),
                const SizedBox(
                  height: 15,
                ),
                TextFormTemplate(
                  label: 'Digite o sobrenome do passageiro!',
                  focusNode: sobrenomeNode,
                  input: sobrenomeController,
                ),
                const SizedBox(
                  height: 40,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: passageiroList.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    height: 15,
                  ),
                  itemBuilder: (context, index) {
                    var passageiros = passageiroList[index];
                    return TemplateCard(
                        upText: passageiros.nome,
                        bottonText: passageiros.sobrenome);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
