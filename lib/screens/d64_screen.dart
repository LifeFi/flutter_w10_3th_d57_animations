import 'package:flutter/material.dart';

class D64Screen extends StatefulWidget {
  const D64Screen({super.key});

  @override
  State<D64Screen> createState() => _D64ScreenState();
}

class _D64ScreenState extends State<D64Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("D64"),
      ),
      body: const Center(
        child: Text("D64"),
      ),
    );
  }
}
