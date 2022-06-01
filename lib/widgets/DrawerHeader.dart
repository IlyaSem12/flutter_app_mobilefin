import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_fingr_mobile/pages/UserPg.dart';

import '../pages/Pages.dart';

class drawerHeader extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Alex Reznov';
    final email = 'Alex@gmail.com';
    final img = 'https://meme-arsenal.com/create/template/648632';
    return Drawer(
        child: Material(
      color: Color.fromARGB(204, 170, 167, 167),
      child: ListView(padding: padding, children: <Widget>[
        buildHeader(
          img: img,
          name: name,
          email: email,
          onClicked: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UserPage(
              name: name,
              img: img,
            ),
          )),
        ),
        const SizedBox(height: 24),
        buildMenuItem(
            text: 'Настройки профиля',
            icon: Icons.drive_file_rename_outline_sharp,
            onClicked: () => selectedItem(context, 0)),
        const SizedBox(height: 16),
        buildMenuItem(
            text: 'Статистика',
            icon: Icons.auto_graph_outlined,
            onClicked: () => selectedItem(context, 0)),
        const SizedBox(height: 16),
        buildMenuItem(
            text: 'ФСМЦ',
            icon: Icons.info_outline_rounded,
            onClicked: () => selectedItem(context, 0)),
        const SizedBox(height: 16),
        buildMenuItem(
            text: 'О нас',
            icon: Icons.people_alt,
            onClicked: () => selectedItem(context, 0)),
        const SizedBox(height: 16),
        buildMenuItem(
            text: 'Выход',
            icon: Icons.exit_to_app_outlined,
            onClicked: () => selectedItem(context, 0)),
        const SizedBox(height: 24),
        Divider(
          color: Colors.white70,
        ),
        const SizedBox(height: 24),
      ]),
    ));
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final howerColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: howerColor,
      onTap: onClicked,
    );
  }

  Widget buildHeader({
    required String img,
    required String name,
    required String email,
    VoidCallback? onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 50)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(img)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Pages(),
        ));
        break;
      default:
    }
  }
}
