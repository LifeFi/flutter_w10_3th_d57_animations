import 'package:flutter/material.dart';

class D59Screen extends StatefulWidget {
  const D59Screen({super.key});

  @override
  State<D59Screen> createState() => _D59ScreenState();
}

class _D59ScreenState extends State<D59Screen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 2000),
    vsync: this,
  )..repeat();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("D59 - Explicit Animation"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Container(
        width: 350,
        height: 350,
        padding: const EdgeInsets.all(30),
        color: Colors.black,
        child: GridView.builder(
          itemCount: 25,
          reverse: true,
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
          ),
          itemBuilder: (context, index) {
            final row = index ~/ 5;
            if (row % 2 == 0) {
              index = row * 5 + 4 - (index % 5);
            }
            final fadeInOutTween = TweenSequence([
              TweenSequenceItem(
                tween: Tween(begin: 0.0, end: 1.0).chain(
                  CurveTween(
                    curve: Curves.bounceIn,
                  ),
                ),
                weight: 3,
              ),
              TweenSequenceItem(
                tween: Tween(begin: 1.0, end: 1.0),
                weight: 2,
              ),
              TweenSequenceItem(
                tween: Tween(begin: 1.0, end: 0.0).chain(
                  CurveTween(
                    curve: Curves.easeInExpo,
                  ),
                ),
                weight: 5,
              ),
            ]).animate(
              CurvedAnimation(
                parent: _controller,
                curve: Interval(
                  (index / 50),
                  ((index + 25) / 50),
                ),
              ),
            );

            return ScaleTransition(
              scale: fadeInOutTween,
              child: FadeTransition(
                opacity: fadeInOutTween,
                child: Container(
                  margin: const EdgeInsets.all(15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  // child: Text(
                  //   index.toString(),
                  //   style: const TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 10,
                  //   ),
                  // ),
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}
