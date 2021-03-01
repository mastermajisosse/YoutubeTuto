import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title").tr(),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text("msg").tr(),
      ),
    );
  }
}
