import 'package:flutter/material.dart';
import 'package:study_flutter_widget/bottom_navigator_bar.dart';

void main() {
  // runApp(const MyApp());
  // runApp(RandomWordsApp());
  // runApp(const CounterApp());
  // runApp(MainPage());
  // runApp(ClickGoodApp());
  runApp(BottomNavigationBarApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('AppBar'),
          backgroundColor: Colors.amber,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.face, color: Colors.white),
              onPressed: () => {},
            ),
            IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.email, color: Colors.white)),
            IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.favorite, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
