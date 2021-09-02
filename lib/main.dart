import 'package:flutter/material.dart';
import 'package:mixin_service/view/view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: View(),
    );
  }
}
