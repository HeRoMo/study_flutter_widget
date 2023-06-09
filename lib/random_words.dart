import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(
      wordPair.asPascalCase,
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final wordPair = WordPair.random();
    return MaterialApp(
        title: 'Random Words',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Random Words App'),
            ),
            body: Center(
              child: RandomWords(),
            )));
  }
}
