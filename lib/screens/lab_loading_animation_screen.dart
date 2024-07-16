import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LabLoadingAnimationScreen extends StatefulWidget {
  const LabLoadingAnimationScreen({super.key});

  @override
  State<LabLoadingAnimationScreen> createState() =>
      _LabLoadingAnimationScreenState();
}

class _LabLoadingAnimationScreenState extends State<LabLoadingAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab Loading Animation"),
      ),
      body: Center(
        child: Column(
          children: [
            LoadingAnimationWidget.beat(
              color: Colors.red,
              size: 30,
            ),
            LoadingAnimationWidget.bouncingBall(
              color: Colors.yellow,
              size: 30,
            ),
            LoadingAnimationWidget.discreteCircle(
              color: Colors.yellow,
              size: 30,
            ),
            LoadingAnimationWidget.staggeredDotsWave(
              color: Colors.yellow,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
