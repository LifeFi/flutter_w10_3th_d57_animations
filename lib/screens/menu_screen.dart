import 'package:flutter/material.dart';
import 'package:flutter_w10_3th_d57_animations/screens/d57_screen.dart';
import 'package:flutter_w10_3th_d57_animations/screens/d59_screen.dart';
import 'package:flutter_w10_3th_d57_animations/screens/d61_screen.dart';
import 'package:flutter_w10_3th_d57_animations/screens/d64_screen.dart';
import 'package:flutter_w10_3th_d57_animations/screens/lab_animated_emoji_screen.dart';
import 'package:flutter_w10_3th_d57_animations/screens/lab_fl_chart_screen.dart';
import 'package:flutter_w10_3th_d57_animations/screens/lab_flutter_animate_screen.dart';
import 'package:flutter_w10_3th_d57_animations/screens/lab_loading_animation_screen.dart';
import 'package:flutter_w10_3th_d57_animations/screens/lab_weather_animation_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  void _goToScreen(Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => screen,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToScreen(const D57Screen()),
              child: const Text("D57 - Implicit Animation"),
            ),
            ElevatedButton(
              onPressed: () => _goToScreen(const D59Screen()),
              child: const Text("D59 - Explicit Animation"),
            ),
            ElevatedButton(
              onPressed: () => _goToScreen(const D61Screen()),
              child: const Text("D61 - Custom Painter"),
            ),
            ElevatedButton(
              onPressed: () => _goToScreen(const D64Screen()),
              child: const Text("D64 - Flashcards App"),
            ),
            ElevatedButton(
              onPressed: () => _goToScreen(const LabFlutterAnimateScreen()),
              child: const Text("Flutter Animte"),
            ),
            ElevatedButton(
              onPressed: () => _goToScreen(const LabAnimatedEmojiScreen()),
              child: const Text("Animated Emoji"),
            ),
            ElevatedButton(
              onPressed: () => _goToScreen(const LabWeatherAnimationScreen()),
              child: const Text("Weather Animation"),
            ),
            ElevatedButton(
              onPressed: () => _goToScreen(const LabFlChartScreen()),
              child: const Text("FL Chart"),
            ),
            ElevatedButton(
              onPressed: () => _goToScreen(const LabLoadingAnimationScreen()),
              child: const Text("Loading Animation"),
            ),
          ],
        ),
      ),
    );
  }
}
