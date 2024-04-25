import 'package:flutter/material.dart';
import 'package:focus_timer/ui/pages/login_page.dart';
import 'package:focus_timer/ui/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
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
      home: const MyHomePage(title: 'Focus Timer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              context.read<ThemeProvider>().toggleTheme();
            },
            child: Icon(context.read<ThemeProvider>().isDarkMode
                ? Icons.light_mode
                : Icons.dark_mode),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            child: const Icon(Icons.login),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
