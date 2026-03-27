  import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(title,style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
        Row(spacing:10,
          children: [
            Icon(Icons.photo_camera),
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],)
      ],
    );
  }
}