import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void onClick() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MyLargeTitle(),
                IconButton(
                    onPressed: onClick,
                    icon: const Icon(
                      Icons.add_box_rounded,
                      size: 40,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 30,
        // color: Colors.black,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
