import 'package:animation_examples/helper.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Button(
                  text: '1',
                  index: 1,
                ),
                Button(
                  text: '2',
                  index: 2,
                ),
                Button(
                  text: '3',
                  index: 3,
                ),
                Button(
                  text: '4',
                  index: 4,
                ),
              ],
            ),
            Row(
              children: [
                Button(
                  text: 'Parser',
                  index: 5,
                ),
                Button(
                  text: '6',
                  index: 6,
                ),
                Button(
                  text: '7',
                  index: 7,
                ),
                Button(
                  text: '8',
                  index: 8,
                ),
              ],
            )

            /*  const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),*/
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}

class Button extends StatelessWidget {
  String text;
  int index;
  Button({required this.index, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(getRoute(index));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
        height: getScreenHeight(context) / 8,
        width: getScreenWidth(context) / 5,
        decoration: myBoxDecoration(),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 30, fontStyle: FontStyle.italic),
        )),
      ),
    );
  }
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.cyan,
    border: Border.all(width: 1, color: Colors.blue),
  );
}

String getRoute(int index) {
  String route;
  switch (index) {
    case 1:
      route = '/home/screen1';
      break;
    case 2:
      route = '/home/screen2';
      break;
    case 3:
      route = '/home/screen3';
      break;
    case 4:
      route = '/home/screen4';
      break;
    case 5:
      route = '/home/screen5';
      break;
    case 6:
      route = '/home/screen6';
      break;
    case 7:
      route = '/home/screen7';
      break;
    case 8:
      route = '/home/screen8';
      break;
    default:
      route = '/home';
  }
  return route;
}
