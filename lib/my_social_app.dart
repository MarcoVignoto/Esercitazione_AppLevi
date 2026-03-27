import 'package:flutter/material.dart';
import 'my_post_header.dart';

class MySocialApp extends StatefulWidget {
  final String titolo;

  const MySocialApp({super.key, required this.titolo});

  @override
  State<MySocialApp> createState() => _MySocialAppState();
}

class _MySocialAppState extends State<MySocialApp> {
  int maxPosts = 5;

  final List<String> users = [
    "Mario Rossi",
    "Luca Verdi",
    "Giovanni Bianchi",
    "Anna Neri",
    "Paola Gialli",
    "Giuseppe Marroni",
    "Giorgio Arancioni",
    "Giulia Viola",
    "Greta Azzurri",
    "Giacomo Turchesi",
  ];

  final List<String> messagesPreview = [
    "Ciao come stai?",
    "Ho preso gli spaghetti ed il sugo, ci facciamo una pas...",
    "Come va?",
    "Tutto bene?",
    "Tutto a posto?",
    "Come procede?",
    "Che succede?",
    "Che si dice?",
    "Che si fa?",
    "Che si mangia? ",
  ];

  final List<String> imagesPath = [
    'images/user_01.png',
    'images/user_02.jpg',
    'images/user_03.png',
    'images/user_04.webp',
    'images/user_05.webp',
    'images/user_06.png',
    'images/user_07.png',
    'images/user_08.jpg',
    'images/user_09.webp',
    'images/user_10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (int i = 0; i < maxPosts; i++)
          MyPostHeader(
            pathImage: imagesPath[i],
            nomeUtente: users[i],
            anteprimaMessaggio: messagesPreview[i],
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  maxPosts = 5;
                });
              },
              child: const Text('Max 5 posts'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  maxPosts = 10;
                });
              },
              child: const Text('Max 10 posts'),
            ),
          ],
        ),
      ],
    );
  }
}
