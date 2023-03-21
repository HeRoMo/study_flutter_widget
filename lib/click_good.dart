import 'package:flutter/material.dart';

class ClickGoodState extends State<ClickGood> {
  bool _active = false;
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 200.0,
            child: Center(
              child: Icon(
                Icons.thumb_up,
                color: _active ? Colors.orange[700] : Colors.grey[600],
                size: 100.0,
              ),
            ),
          ),
          Container(
            width: 200.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: _active ? Colors.orange[700] : Colors.grey[600],
            ),
            child: Center(
              child: Text(
                _active ? 'Active' : 'Inactive',
                style: const TextStyle(fontSize: 32.0, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ClickGood extends StatefulWidget {
  @override
  ClickGoodState createState() => ClickGoodState();
}

class ClickGoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful'),
        ),
        body: Center(
          child: ClickGood(),
        ),
      ),
    );
  }
}
