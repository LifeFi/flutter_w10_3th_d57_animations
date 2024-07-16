import 'package:flutter/material.dart';
import 'package:weather_animation/weather_animation.dart';

class LabWeatherAnimationScreen extends StatefulWidget {
  const LabWeatherAnimationScreen({super.key});

  @override
  State<LabWeatherAnimationScreen> createState() =>
      _LabWeatherAnimationScreenState();
}

class _LabWeatherAnimationScreenState extends State<LabWeatherAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          WeatherScene.sunset.sceneWidget,
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Text(
              "Sunset",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
