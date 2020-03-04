import 'package:flutter/material.dart';

import 'ui/home.dart';

void main() => runApp(Imc());

class Imc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
