import 'package:flutter/material.dart';

class PasswordInputWidgets extends StatelessWidget {
  final FocusNode passswordFocusNode;
  const PasswordInputWidgets({super.key, required this.passswordFocusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      focusNode: passswordFocusNode,
      obscureText: true,
      decoration: const InputDecoration(
          hintText: 'Password', border: OutlineInputBorder()),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Password';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
