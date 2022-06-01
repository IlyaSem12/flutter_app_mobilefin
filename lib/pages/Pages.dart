import 'package:flutter/material.dart';
import 'package:flutter_fingr_mobile/config/theme.dart';
import 'package:flutter_fingr_mobile/widgets/DrawerHeader.dart';

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: drawerHeader(),
        appBar: _appBar(),
      );

  _appBar() {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      title: Text(
        "Заглушка",
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
      ),
    );
  }
}
