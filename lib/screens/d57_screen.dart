import 'package:flutter/material.dart';

class D57Screen extends StatefulWidget {
  const D57Screen({super.key});

  @override
  State<D57Screen> createState() => _D57ScreenState();
}

class _D57ScreenState extends State<D57Screen> {
  double begin = 0.0;
  double end = 1.0;
  bool isForward = true;
  double boxSize = 200;

  void _toggleDirection() {
    setState(() {
      isForward = !isForward;
      begin = isForward ? 0.0 : 1.0;
      end = isForward ? 1.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("D57"),
        backgroundColor: isForward ? Colors.black : Colors.white,
        foregroundColor: isForward ? Colors.white : Colors.black38,
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween(begin: begin, end: end),
          duration: const Duration(seconds: 1),
          onEnd: () => _toggleDirection(),
          builder: (context, value, child) => Container(
            width: size.width,
            height: size.height,
            color: isForward ? Colors.black : Colors.white,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: boxSize,
                    height: boxSize,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: isForward ? BoxShape.rectangle : BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    left: value * boxSize,
                    child: Container(
                      width: boxSize / 20,
                      height: boxSize,
                      color: isForward ? Colors.white : Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
