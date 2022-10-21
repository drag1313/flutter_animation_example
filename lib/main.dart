import 'package:animation_examples/home.dart';
import 'package:animation_examples/screens/screen1.dart';
import 'package:animation_examples/screens/screen2.dart';
import 'package:animation_examples/screens/screen3.dart';
import 'package:animation_examples/screens/screen4.dart';
import 'package:animation_examples/screens/screen5.dart';
import 'package:animation_examples/screens/screen6.dart';
import 'package:animation_examples/screens/screen7.dart';
import 'package:animation_examples/screens/screen8.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Animation example'),
        '/home/screen1': ((context) => const Screen1()),
        '/home/screen2': ((context) => const Screen2()),
        '/home/screen3': ((context) => const Screen3()),
        '/home/screen4': ((context) => const Screen4()),
        '/home/screen5': ((context) => const Screen5()),
        '/home/screen6': ((context) => const Screen6()),
        '/home/screen7': ((context) => const Screen7()),
        '/home/screen8': ((context) => const Screen8()),
      },
      onGenerateRoute: (_) {
        return PageRouteBuilder<Object>(
          transitionDuration: Duration(seconds: 4),
          pageBuilder: (_, __, ___) => ExampleWidget2(),
        );
      },
      initialRoute: '/home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Animation example'),
    );
  }
}
