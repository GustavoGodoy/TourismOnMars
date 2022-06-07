import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class CardAnimado extends StatefulWidget {
  final String? leftText;
  final String rightText;
  const CardAnimado({required this.leftText, this.rightText = ''});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // ignore: no_logic_in_create_state
    return _CardAnimado(leftText: leftText, rightText: rightText);
  }
}

class _CardAnimado extends State {
  final String? leftText;
  final String rightText;
  Color color = Colors.white;
  _CardAnimado({required this.leftText, this.rightText = ''});

  void changeColor() {
    setState(() {
      if (color == Colors.white) {
        color = Colors.blueGrey;
      } else {
        color = Colors.white;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          changeColor();
        },
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 2),
              color: color),
          height: 80,
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Center(
            child: Row(
              children: [Text(leftText!), const Spacer(), Text(rightText)],
            ),
          ),
        ),
      ),
    );
  }
}
