import 'package:flutter/material.dart';
import 'package:focus_timer/ui/widgets/stopwatch_provider.dart';
import 'package:provider/provider.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Theme.of(context).colorScheme.background),
      child: Consumer<StopwatchProvider>(builder: (context, data, widget) {
        if (data.results.isNotEmpty) {
          return Column(
            children: [
              const Text(
                "Last Results:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: data.results.map((e) => Text("$e seconds")).toList(),
              )
            ],
          );
        } else {
          return const Placeholder();
        }
      }),
    );
  }
}
