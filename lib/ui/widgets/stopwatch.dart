import 'package:flutter/material.dart';
import 'package:focus_timer/ui/widgets/stopwatch_provider.dart';
import 'package:provider/provider.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StopwatchProvider>(
      builder: (context, data, widget) {
        return Column(
          children: [
            Text("${data.count}"),
            GestureDetector(
              child: data.isPlaying
                  ? const Icon(Icons.pause)
                  : const Icon(Icons.play_arrow),
              onTap: () {
                if (data.isPlaying) {
                  data.stopStopwatch();
                } else {
                  data.startStopwatch();
                }
              },
            )
          ],
        );
      },
    );
  }
}
