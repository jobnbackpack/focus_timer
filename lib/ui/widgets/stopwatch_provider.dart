import 'dart:async';

import 'package:flutter/material.dart';

class StopwatchProvider extends ChangeNotifier {
  Timer? _timer;
  int _count = 0;

  int get count => _count;
  bool get isPlaying => _count != 0;

  List<int> results = [];

  void startStopwatch() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _count++;
      notifyListeners();
    });
    notifyListeners();
  }

  void stopStopwatch() {
    if (_timer != null) {
      _timer!.cancel();
    }
    results.add(_count);
    _count = 0;
    notifyListeners();
  }
}
