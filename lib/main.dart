import 'package:flutter/material.dart';
import 'package:study_flutter_widget/bottom_navigator_bar.dart';
import 'package:study_flutter_widget/button_sample.dart';
import 'package:study_flutter_widget/click_good.dart';
import 'package:study_flutter_widget/counter.dart';
import 'package:study_flutter_widget/random_words.dart';

void main() {
  runApp(const MyApp());
}

const String homeRoute = '/home';
const String counterRoute = '/counter';
const String randomWordRoute = '/randomWord';
const String clickGoodRoute = '/clickGood';
const String bottomNaviRoute = '/bottomNavi';
const String buttonRoute = '/button';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      routes: <String, WidgetBuilder>{
        homeRoute: (BuildContext context) => const MainPage(),
        counterRoute: (BuildContext context) => const CounterApp(),
        randomWordRoute: (BuildContext context) => RandomWordsApp(),
        clickGoodRoute: (BuildContext context) => ClickGoodApp(),
        bottomNaviRoute: (BuildContext context) => BottomNavigationBarApp(),
        buttonRoute: (BuildContext context) => ButtonSampleApp(),
        '/subpage': (BuildContext context) => const SubPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () => {},
        // ),
        title: const Text('MyApp'),
        backgroundColor: Colors.amber,
        centerTitle: false,
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Drawer Header')),
            ListTile(
              title: const Text('カウンター'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.of(context).pushNamed(counterRoute),
              },
            ),
            ListTile(
              title: const Text('ランダムワード'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.of(context).pushNamed(randomWordRoute),
              },
            ),
            ListTile(
              title: const Text('クリックGood'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.of(context).pushNamed(clickGoodRoute),
              },
            ),
            ListTile(
              title: const Text('ボトムナビゲーションバー'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.of(context).pushNamed(bottomNaviRoute),
              },
            ),
            ListTile(
              title: const Text('ボタンサンプル'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.of(context).pushNamed(buttonRoute),
              },
            ),
            ListTile(
              title: const Text('Subページ'),
              onTap: () => {
                Navigator.pop(context),
                Navigator.of(context).pushNamed('/subpage'),
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              const Text('Main'),
              OutlinedButton(
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed('/subpage'),
                  child: const Text('Subページへ(Replace)'))
            ],
          ),
        ),
      ),
    );
  }
}

class SubPage extends StatelessWidget {
  const SubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              const Text('Main'),
              OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Mainページへ戻る'))
            ],
          ),
        ),
      ),
    );
  }
}
