import 'package:flutter/material.dart';
import 'package:gsfiap/components/template_button.dart';
import 'package:gsfiap/modules/alunos.dart';
import 'package:gsfiap/utils/export.dart';
import 'package:gsfiap/components/template_textform.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: GlobalPadding.generalPadding,
            right: GlobalPadding.generalPadding,
            top: GlobalPadding.generalPadding,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/images/logo.png'),
              ),
              const SizedBox(height: 20),
              const Text('TOURISM ON MARS',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.blueGrey),
                  textAlign: TextAlign.center),
              const SizedBox(height: 20),
              TextFormTemplate(
                label: login,
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormTemplate(
                label: password,
              ),
              const SizedBox(
                height: 15.0,
              ),
              ButtonTemplate(
                buttonText: login,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomePage()),
                    ),
                  );
                },
              ),
              const SizedBox(height: 15),
              ButtonTemplate(
                buttonText: 'Alunos',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => AlunosPage()),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
