import 'package:flutter/material.dart';
import 'package:focus_timer/ui/widgets/stopwatch_provider.dart';
import 'package:provider/provider.dart';

class Stopwatch extends StatelessWidget {
  const Stopwatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${context.watch<StopwatchProvider>().count}"),
        GestureDetector(
          child: const Icon(Icons.play_arrow),
          onTap: () {
            if (context.watch<StopwatchProvider>().isPlaying) {
              context.read<StopwatchProvider>().stopStopwatch();
            } else {
              context.read<StopwatchProvider>().startStopwatch();
            }
          },
        )
      ],
    );
  }
}
