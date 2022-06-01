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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.newspaper_outlined),
          label: "Новости",
        ),
        new BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_rounded),
          label: "Тренажер",
        ),
        new BottomNavigationBarItem(
          icon: Icon(Icons.science),
          label: "Учебный курс",
        ),
        // new BottomNavigationBarItem(
        //   icon: Icon(Icons.library_books_rounded),
        //   label: "Материалы",
        // )
      ]),
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
    );
  }
}
