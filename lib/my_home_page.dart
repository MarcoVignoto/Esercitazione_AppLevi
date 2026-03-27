import 'package:flutter/material.dart';
import 'my_title.dart';
import 'my_post_header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.appTitle});

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MyTitle(title: appTitle)),
        body: Column(
          children: [
            for (int i = 0; i < 10; i++) MyPostHeader(
              pathImage: 'assets/user_01.png',
              nomeUtente: 'Mario Rossi',
              anteprimaMessaggio: 'Ciao come stai?',
            ),
          ],
        )
    );
  }
}