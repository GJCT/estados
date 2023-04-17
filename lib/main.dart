import 'package:flutter/material.dart';

import 'package:estados/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estadosl App',
      initialRoute: '1',
      routes: {
        '1': ( _) => const Screen1(),
        '2': ( _) => const Screen2()
      },
    );
  }
}