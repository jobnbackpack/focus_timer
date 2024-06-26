import 'package:flutter/material.dart';
import 'package:focus_timer/ui/pages/timer_page.dart';
import 'package:focus_timer/ui/themes/theme_provider.dart';
import 'package:focus_timer/ui/widgets/stopwatch_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (BuildContext context) {
          return ThemeProvider();
        }),
        ChangeNotifierProvider<StopwatchProvider>(
          create: (BuildContext context) {
            return StopwatchProvider();
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Focus Timer',
      theme: context.watch<ThemeProvider>().themeData,
      home: const TimerPage(),
    );
  }
}
