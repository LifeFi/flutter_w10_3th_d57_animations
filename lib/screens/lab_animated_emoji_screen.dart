import 'package:animated_emoji/emoji.dart';
import 'package:animated_emoji/emojis.g.dart';
import 'package:flutter/material.dart';

class LabAnimatedEmojiScreen extends StatefulWidget {
  const LabAnimatedEmojiScreen({super.key});

  @override
  State<LabAnimatedEmojiScreen> createState() => _LabAnimatedEmojiScreenState();
}

class _LabAnimatedEmojiScreenState extends State<LabAnimatedEmojiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab Animated Emoji"),
      ),
      body: const Center(
        child: Column(
          children: [
            AnimatedEmoji(
              AnimatedEmojis.alarmClock,
              size: 100,
            ),
            AnimatedEmoji(
              AnimatedEmojis.angry,
              size: 100,
            ),
            AnimatedEmoji(
              AnimatedEmojis.smile,
              size: 100,
            ),
            AnimatedEmoji(
              AnimatedEmojis.screaming,
              size: 100,
            ),
            AnimatedEmoji(
              AnimatedEmojis.victory,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
