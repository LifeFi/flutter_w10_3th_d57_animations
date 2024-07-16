import 'package:flutter/material.dart';

class D61Screen extends StatefulWidget {
  const D61Screen({super.key});

  @override
  State<D61Screen> createState() => _D61ScreenState();
}

class _D61ScreenState extends State<D61Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("D61"),
      ),
      body: const Center(
        child: Text("D61"),
      ),
    );
  }
}
