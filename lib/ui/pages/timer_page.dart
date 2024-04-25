import 'package:flutter/material.dart';
import 'package:focus_timer/ui/pages/login_page.dart';
import 'package:focus_timer/ui/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text("Focus Timer"),
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
