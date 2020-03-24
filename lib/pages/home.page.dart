import 'package:app_mobx_todo_list/pages/increment.page.dart';
import 'package:app_mobx_todo_list/pages/join_first_last_name.page.dart';
import 'package:app_mobx_todo_list/pages/todolist.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _page = 2;

  @override
  void initState() {
    _pageController = PageController(initialPage: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MobX'),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          IncrementPage(),
          JoinFirstLastNamePage(),
          TodoListPage(),
          IncrementPage(),
          IncrementPage(),
        ],
      ),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        // Increment
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          title: Text('Increment', style: TextStyle(fontSize: 10)),
        ),
        // First Last Name
        BottomNavigationBarItem(
          icon: Icon(Icons.input),
          title: Text('Join Text', style: TextStyle(fontSize: 10)),
        ),
        // Posts
        BottomNavigationBarItem(
          icon: Icon(Icons.public),
          title: Text('Todo List', style: TextStyle(fontSize: 10)),
        ),
        // Notifications
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('Mensagens', style: TextStyle(fontSize: 10)),
        ),
        // Profile
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Perfil', style: TextStyle(fontSize: 10)),
        ),
      ],
      onTap: navigationTapped,
      currentIndex: _page,
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
