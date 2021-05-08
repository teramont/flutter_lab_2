import 'package:flutter/material.dart';
import 'package:lab_2/instagram/tabs/activity.dart';
import 'package:lab_2/instagram/tabs/home.dart';
import 'package:lab_2/instagram/tabs/new_post.dart';
import 'package:lab_2/instagram/tabs/profile.dart';
import 'package:lab_2/instagram/tabs/search.dart';

class EntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    NewPostTab(),
    ActivityTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: tabs.length, child: Scaffold(
      body: TabBarView(children: tabs,),
      bottomNavigationBar: TabBar(
        unselectedLabelColor: Colors.black,
        labelColor: Colors.blueGrey,
        tabs: [
          Tab(icon: Icon(Icons.home_outlined),),
          Tab(icon: Icon(Icons.search),),
          Tab(icon: Icon(Icons.add),),
          Tab(icon: Icon(Icons.favorite_outline),),
          Tab(icon: Icon(Icons.perm_identity),),
        ],
      ),
    ));
  }
}
