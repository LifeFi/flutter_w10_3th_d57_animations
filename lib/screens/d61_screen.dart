import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_w10_3th_d57_animations/screens/widgets/arc_painter.dart';
import 'package:flutter_w10_3th_d57_animations/screens/widgets/d59_colors.dart';
import 'package:flutter_w10_3th_d57_animations/screens/widgets/fade_in_filter.dart';
import 'package:flutter_w10_3th_d57_animations/screens/widgets/interactive_container.dart';

class D61Screen extends StatefulWidget {
  const D61Screen({super.key});

  @override
  State<D61Screen> createState() => _D61ScreenState();
}

class _D61ScreenState extends State<D61Screen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: Duration(microseconds: 1000000 * _totalSeconds ~/ _currentSpeed),
  );

  late final Animation<double> _progress =
      Tween(begin: 0.0, end: 2.0).animate(_animationController);

  final _listOfTotalSeconds = [60, 900, 1200, 1500, 1800, 2100];
  final _listOfSpeed = [1, 10, 100, 1000, 10000];
  int _totalSeconds = 1500;
  final _restingSeconds = 300;
  final _totalRounds = 4;
  final _totalGoals = 12;

  int _currentSeconds = 1500;
  int _currentSpeed = 100;
  int _currentRounds = 0;
  int _currentGoals = 0;

  bool _isRunning = false;
  bool _isResting = false;
  Timer? _timer;

  void _setTotalSeconds(int seconds) {
    _totalSeconds = seconds;
    _animationController.duration =
        Duration(microseconds: 1000000 * _totalSeconds ~/ _currentSpeed);
    _onResetPressed();
  }

  void _onChangeSpeed() {
    final index = _listOfSpeed.indexOf(_currentSpeed);
    final nextIndex = (index + 1) % _listOfSpeed.length;
    setState(() {
      _currentSpeed = _listOfSpeed[nextIndex];
      _animationController.duration =
          Duration(microseconds: 1000000 * _totalSeconds ~/ _currentSpeed);
    });
    if (_isRunning) {
      _onPausePressed();
      _onStartPressed();
    }
  }

  void _onTick(Timer timer) {
    if (_currentSeconds <= 0) {
      if (!_isResting) {
        _isResting = true;
        _animationRestart(_restingSeconds);
        if (_currentRounds < _totalRounds - 1) {
          setState(() {
            _currentRounds = _currentRounds + 1;
            _currentSeconds = _restingSeconds;
          });
        } else if (_currentGoals < _totalGoals - 1) {
          setState(() {
            _currentGoals = _currentGoals + 1;
            _currentRounds = 0;
            _currentSeconds = _restingSeconds;
          });
        } else {
          _onResetPressed();
        }
      } else {
        setState(() {
          _isResting = false;
          _animationRestart(_totalSeconds);
        });
      }
    } else {
      setState(() {
        // Timer 와 AnimationController 을 맞추기 위해
        // _currentSeconds - 1 대신, _animationsController.value 를 사용.
        _currentSeconds = _calculateCurrentSeconds(
          _isResting ? _restingSeconds : _totalSeconds,
        );
      });
    }
  }

  void _animationRestart(int totalSeconds) {
    _animationController.value = 0;
    _animationController.duration =
        Duration(microseconds: 1000000 * totalSeconds ~/ _currentSpeed);
    _currentSeconds = totalSeconds;
    _animationController.forward();
  }

  int _calculateCurrentSeconds(int totalSecods) {
    return totalSecods - (_animationController.value * totalSecods).round();
  }

  void _onStartPressed() {
    _timer = Timer.periodic(
      Duration(microseconds: 1000000 ~/ _currentSpeed),
      _onTick,
    );
    setState(() {
      _isRunning = true;
      _animationController.forward();
    });
  }

  void _onPausePressed() {
    _timer?.cancel();
    setState(() {
      _isRunning = false;
      _animationController.stop();
    });
  }

  void _onResetPressed() {
    setState(() {
      _currentSeconds = _totalSeconds;
      _currentRounds = 0;
      _currentGoals = 0;
      _isResting = false;
      _animationController.value = 0;
      _onPausePressed();
    });
  }

  String _formatMinutes(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(2, 4);
  }

  String _formatSeconds(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(5, 7);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: D59Colors.primary,
      appBar: AppBar(
        title: const Text("D61 - POMOTIMER"),
        backgroundColor: D59Colors.primary,
        foregroundColor: D59Colors.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedBuilder(
                      animation: _progress,
                      builder: (context, child) => CustomPaint(
                        size: const Size(250, 250),
                        painter: ArcPainter(
                          color: D59Colors.primary,
                          progress: _progress.value,
                          isResting: _isResting,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            _formatMinutes(_currentSeconds),
                            style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                              color: _isResting
                                  ? D59Colors.secondary.withOpacity(0.4)
                                  : D59Colors.onPrimary,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        Text(
                          " : ",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: _isResting
                                ? D59Colors.secondary.withOpacity(0.3)
                                : D59Colors.onPrimary,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            _formatSeconds(_currentSeconds),
                            style: TextStyle(
                              fontSize: 55,
                              fontWeight: FontWeight.bold,
                              color: _isResting
                                  ? D59Colors.secondary.withOpacity(0.4)
                                  : D59Colors.onPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 110,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: _isResting ? 0.5 : 0,
                        child: Text(
                          "   Resting...",
                          style: TextStyle(
                            fontSize: 20,
                            color: D59Colors.onPrimary,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ..._listOfTotalSeconds.map(
                            (item) => InteractiveContainer(
                              bottomValue: 0.8,
                              topValue: 1.0,
                              child: GestureDetector(
                                onTap: () => _setTotalSeconds(item),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Container(
                                    width: 75,
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: item == _totalSeconds
                                            ? D59Colors.onPrimary
                                            : D59Colors.onPrimary
                                                .withOpacity(0.5),
                                        width: 2.5,
                                      ),
                                      color: item == _totalSeconds
                                          ? D59Colors.onPrimary
                                          : null,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      "${item ~/ 60}",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: item == _totalSeconds
                                            ? D59Colors.primary
                                            : D59Colors.onPrimary
                                                .withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FadeInFilter(
                      sideColor: D59Colors.primary,
                      centerColor: D59Colors.primary.withOpacity(0),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InteractiveContainer(
                      child: GestureDetector(
                        onTap: _onChangeSpeed,
                        child: Container(
                          width: 60,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: D59Colors.secondary.withOpacity(0.2),
                            // color: Colors.yellow,
                          ),
                          child: Text(
                            "x$_currentSpeed",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: D59Colors.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InteractiveContainer(
                      child: GestureDetector(
                        onTap: _isRunning ? _onPausePressed : _onStartPressed,
                        child: Container(
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: D59Colors.secondary.withOpacity(0.2),
                            // color: Colors.yellow,
                          ),
                          child: _isRunning
                              ? Icon(
                                  Icons.pause,
                                  size: 50,
                                  color: D59Colors.onPrimary,
                                )
                              : Icon(
                                  Icons.play_arrow,
                                  size: 50,
                                  color: D59Colors.onPrimary,
                                ),
                        ),
                      ),
                    ),
                    InteractiveContainer(
                      child: GestureDetector(
                        onTap: _onResetPressed,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: D59Colors.secondary.withOpacity(0.2),
                            // color: Colors.yellow,
                          ),
                          child: Icon(
                            Icons.settings_backup_restore_rounded,
                            size: 45,
                            color: D59Colors.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$_currentRounds/$_totalRounds",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: D59Colors.onPrimary.withOpacity(0.5),
                          ),
                        ),
                        Text(
                          "ROUND",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: D59Colors.onPrimary,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$_currentGoals/$_totalGoals",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: D59Colors.onPrimary.withOpacity(0.5),
                          ),
                        ),
                        Text(
                          "GOAL",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: D59Colors.onPrimary,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
