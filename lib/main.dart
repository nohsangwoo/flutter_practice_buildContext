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
  bool showTitle = true;
  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

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
                showTitle ? const MyLargeTitle() : const Text("nothing"),
                IconButton(
                    onPressed: toggleTitle,
                    icon: const Icon(
                      Icons.remove_red_eye,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({super.key});

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    // widget이 렌더링 될때 처음 딱한번만 실행된다.
    super.initState();
    print("initState");
  }

  @override
  void dispose() {
    // widget이 사라질때 한번만 실행된다.
    super.dispose();
    print("depose");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
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
