// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

typedef OnChangeCallback = void Function(dynamic value);

class FieldBoxWidget extends StatefulWidget {
  final String name;
  final String email;
  final OnChangeCallback get_email;
  const FieldBoxWidget({
    super.key,
    required this.name,
    required this.email,
    required this.get_email,
  });

  @override
  State<FieldBoxWidget> createState() => _FieldBoxWidgetState();
}

class _FieldBoxWidgetState extends State<FieldBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 280,
      color: Colors.white,
      child: TextFormField(
        initialValue: widget.email,
        onChanged: (value) {
          setState(() {
            widget.get_email(value);
          });
        },
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          filled: true,
          labelText: widget.name,
        ),
      ),
    );
  }
}
