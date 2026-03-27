import 'package:flutter/material.dart';

class MyPostHeader extends StatelessWidget {
  final String pathImage;
  final String nomeUtente;
  final String anteprimaMessaggio;

  const MyPostHeader({
    super.key,
    required this.pathImage,
    required this.nomeUtente,
    required this.anteprimaMessaggio,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(pathImage),
        ),
        title: Text(
          nomeUtente,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          anteprimaMessaggio,
          overflow: TextOverflow.ellipsis,
        )
    );
  }

}