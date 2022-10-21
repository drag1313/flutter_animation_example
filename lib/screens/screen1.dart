import 'package:flutter/material.dart';

const duration = Duration(milliseconds: 1000);

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var toggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            toggle = !toggle;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(40),
            color: Colors.black,
            child: TweenAnimation(
              toggle: toggle,
            ),
          ),
        ),
      ),
    );
  }
}

class TweenAnimation extends StatelessWidget {
  final bool toggle;
  const TweenAnimation({required this.toggle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(
        begin: toggle ? 0.0 : 1.0,
        end: toggle ? 1.0 : 0.0,
      ),
      duration: duration,
      builder: (BuildContext context, double value, _) {
        return Opacity(
          opacity: value,
          child: SizedBox(
            width: 200 * value,
            height: 200 * value,
            child: Container(
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
