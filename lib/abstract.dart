import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  List<String> navItems = [
    'My channel',
    'Metrics',
    'Views',
    'Videos',
    'Settings'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/OOjs_UI_icon_userAvatar-constructive.svg/1024px-OOjs_UI_icon_userAvatar-constructive.svg.png'),
              ),
              title: Text('Ruslan Fibruk'),
              subtitle: Text('Student'),
            ),
            SizedBox(
              height: 320,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return NavItem(
                      name: navItems[index],
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              icon: Icon(Icons.favorite_outline_rounded),
              onPressed: () {
                print('You put like to this post');
              }),
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                print('Are you sure you want to quit?');
              }),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String name;

  NavItem({this.name}) : assert(name != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
