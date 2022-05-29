import 'package:flutter/material.dart';

class drawerHeader extends StatelessWidget {
  const drawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            new Text("Item 1"),
            new Text("Item 2"),
            new Text("Item 3"),
            new Text("Item 4"),
            new Text("Item 5"),
            new Text("Item 6"),
          ],
        ),
      ),
    );
  }
}
