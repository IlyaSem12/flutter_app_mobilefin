import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String img;

  const UserPage({
    Key? key,
    required this.name,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(name),
          centerTitle: true,
        ),
        body: Image.network(
          img,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      );
}
