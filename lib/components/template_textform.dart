import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TextFormTemplate extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? input;
  final FocusNode? focusNode;

  TextFormTemplate({
    required this.label,
    this.input,
    this.onEditingComplete,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      controller: input,
      decoration: InputDecoration(
        label: Text(label),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green)),
      ),
    );
  }
}
