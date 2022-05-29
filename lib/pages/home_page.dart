import 'package:flutter/material.dart';
import 'package:flutter_fingr_mobile/config/theme.dart';
import 'package:flutter_fingr_mobile/widgets/DrawerHeader.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: drawerHeader(),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      title: Text(
        "Новости",
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
      ),
      // leading: GestureDetector(
      //   onTap: () {
      //     drawer:
      //     drawerHeader();
      //   },
      //   child: Icon(
      //     Icons.menu,
      //     color: Colors.red,
      //   ),
      // ),
      actions: <Widget>[
        IconButton(
          icon: new Icon(
            Icons.menu,
            color: Colors.red,
          ),
          onPressed: () {
            drawerHeader();
          },
        )
      ],
    );
  }
}
