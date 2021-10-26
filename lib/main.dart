import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:miluq/widgets/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Miluq Client',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const IndexPage('Miluq'),
    );
  }
}
