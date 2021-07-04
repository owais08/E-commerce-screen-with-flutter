import 'package:flutter/material.dart';
import 'package:app_home_screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Screen",
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Ecom App UI",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
          ),
          actions: [
            IconButton(
              color: Colors.black,
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
              ),
            ),
          ],
        ),
        body: Home(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {},
          child: const Icon(
            Icons.search,
            size: 35,
          ),
          tooltip: 'Search',
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 60,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                  ),
                  iconSize: 40,
                  color: Colors.purple,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                      iconSize: 40,
                      color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart,
                  ),
                  iconSize: 40,
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                  ),
                  iconSize: 40,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
