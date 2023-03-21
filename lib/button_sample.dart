import 'package:flutter/material.dart';

// class ChangeFormState extends State<ChangeForm> {
//   final _formKey = GlobalKey<FormState>();
// }

class ButtonSampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Button Sample App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Form'),
          ),
          body: Center(
            child: ChangeForm(),
          ),
        ));
  }
}

class ChangeForm extends StatefulWidget {
  @override
  ChangeFormState createState() => ChangeFormState();
}

class ChangeFormState extends State<ChangeForm> {
  int _count = 0;
  void _handlePressed() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          Text(
            "$_count",
            style: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w500),
          ),
          TextButton(
            onPressed: _handlePressed,
            style: TextButton.styleFrom(
                foregroundColor: Colors.blueAccent,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text(
              '更新',
              // style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
