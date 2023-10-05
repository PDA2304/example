import 'package:example/screen/button.dart';
import 'package:example/screen/text_field_custom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Button(),
      home: TextFieldCustom(),
    );
  }
}
