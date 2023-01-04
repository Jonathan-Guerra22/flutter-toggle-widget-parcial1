import 'package:flutter/material.dart';
import 'package:parcial1/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _titulo = 'Parcial 1 - CheckBox y Switch';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _titulo,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(_titulo),
          ),
          body: Center(
            child: Home(),
          ),
        ));
  }
}
