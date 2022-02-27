import 'package:flutter/material.dart';
import 'package:insta_app/Pages/favorite_page.dart';
import 'package:insta_app/Pages/home_page.dart';
import 'package:insta_app/Pages/plus_page.dart';
import 'package:insta_app/Pages/profile_page.dart';
import 'package:insta_app/Pages/search_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentPageName = 'Home';
  final Map<String, Widget> children = <String, Widget>{
    'home': HomePage(),
    'search': SearchPage(),
    'plus': PlusPage(),
    'favorite': FavoritePage(),
    'profile': ProfilePage(),
  };

  final appBar = AppBar(
    backgroundColor: Color(0xffFFFFFF),
    elevation: 1.0,
    leading: Padding(
        padding: EdgeInsets.only(left: 5.0), child: Icon(Icons.camera_alt)),
    title: SizedBox(
      height: 150.0,
      child: Image.asset("assets/images/m.png"),
    ),
    centerTitle: true,
    actions: [
      Padding(padding: EdgeInsets.only(left: 15.0), child: Icon(Icons.send)),
    ],
  );

  changePage(String namePage) {
    setState(() {
      currentPageName = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: this.children[currentPageName],
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 50.0,
        color: Colors.white,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home, color: Colors.black,), onPressed: () {changePage('home');},),
              IconButton(icon: Icon(Icons.search, color: Colors.black,),onPressed: () {changePage('search');},),
              IconButton(icon: Icon(Icons.add_box, color: Colors.black,),onPressed: () {changePage('plus');},),
              IconButton(icon: Icon(Icons.favorite, color: Colors.black,), onPressed: () {changePage('favorite');},),
              IconButton(icon: Icon(Icons.account_circle, color: Colors.black,), onPressed: () {changePage('profile');},),
            ],
          ),
        ),
      ),
    );
  }
}
