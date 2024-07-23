import 'package:flutter/material.dart';

class LabFlutterAnimateScreen extends StatefulWidget {
  const LabFlutterAnimateScreen({super.key});

  @override
  State<LabFlutterAnimateScreen> createState() =>
      _LabFlutterAnimateScreenState();
}

class _LabFlutterAnimateScreenState extends State<LabFlutterAnimateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Flutter Animate"),
      ),
    );
  }
}
