import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinopickerPage extends StatefulWidget {
  @override
  _CupertinopickerPageState createState() => _CupertinopickerPageState();
}

class _CupertinopickerPageState extends State<CupertinopickerPage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("CupertinoPicker"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 250,
          alignment: Alignment.center,
          width: double.infinity,
          child: CupertinoPicker(
            backgroundColor: Colors.white,
            itemExtent: 50,
            onSelectedItemChanged: (int i) {
              setState(() {
                selected = i;
              });
            },
            looping: true,
            children: <Widget>[
              Center(
                child: Text(
                  "data",
                  style: TextStyle(
                      color: selected == 0 ? Colors.blue : Colors.green),
                ),
              ),
              Center(
                child: Text(
                  "data2",
                  style: TextStyle(
                      color: selected == 1 ? Colors.blue : Colors.green),
                ),
              ),
              Center(
                child: Text(
                  "data3",
                  style: TextStyle(
                      color: selected == 2 ? Colors.blue : Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
