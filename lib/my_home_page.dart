import 'package:flutter/material.dart';
import 'my_title.dart';
import 'my_social_app.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.appTitle});

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MyTitle(title: appTitle)),
      body: const MySocialApp(titolo: ""),
    );
  }
}
