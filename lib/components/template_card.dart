import 'dart:ui';

import 'package:flutter/material.dart';

class TemplateCard extends StatelessWidget {
  final String? upText;
  final String bottonText;

  TemplateCard({required this.upText, this.bottonText = ''});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 2),
            color: Colors.blueGrey),
        height: 80,
        width: 100,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: Center(
          child: Column(
            children: [
              Text(
                upText!,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(bottonText)
            ],
          ),
        ),
      ),
    );
  }
}
