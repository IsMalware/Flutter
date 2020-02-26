import 'package:flutter/material.dart';

import 'ui/home.dart';

void main() => runApp(Planetax());

class Planetax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
