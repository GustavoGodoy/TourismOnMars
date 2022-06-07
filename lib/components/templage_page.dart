import 'package:flutter/material.dart';
import 'package:gsfiap/utils/padding.dart';

class TemplatePage extends StatelessWidget {
  final Widget body;
  final String pageTile;

  TemplatePage({required this.body, required this.pageTile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTile),
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: GlobalPadding.generalPadding,
            right: GlobalPadding.generalPadding,
            top: GlobalPadding.generalPadding,
          ),
          child: SingleChildScrollView(
            child: body,
          )),
    );
  }
}
