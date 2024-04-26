import 'dart:async';

import 'package:flutter/material.dart';

class StopwatchProvider extends ChangeNotifier {
  Timer? _timer;
  int _count = 0;
  var _isPlaying = false;

  int get count => _count;
  bool get isPlaying => _isPlaying;

  List<int> results = [];

  void startStopwatch() {
    _isPlaying = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _count++;
      notifyListeners();
    });
    notifyListeners();
  }

  void stopStopwatch() {
    _isPlaying = false;
    _timer!.cancel();
    results.add(_count);
    _count = 0;
    notifyListeners();
  }
}
