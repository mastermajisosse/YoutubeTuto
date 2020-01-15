import 'package:flutter/material.dart';

// it's a static widget so you can't change it's widgets
// the stateful can be change
class ExplainState extends StatefulWidget {
  @override
  _ExplainStateState createState() => _ExplainStateState();
}

class _ExplainStateState extends State<ExplainState> {
  var txt = "change me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            setState(() {
              txt = 'changed';
            });
          },
          child: Text(txt, style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
