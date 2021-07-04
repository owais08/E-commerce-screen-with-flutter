import 'package:app_home_screen/appliances.dart';
import 'package:app_home_screen/clothes.dart';
import 'package:app_home_screen/electronics.dart';
import 'package:app_home_screen/households.dart';
import 'package:app_home_screen/others.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Items',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View More",
                      style: TextStyle(color: Colors.purple, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: gridview1(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'More Categories',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(
              height: 80.0,
              child: listview(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Items',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View More",
                      style: TextStyle(color: Colors.purple, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            gridview2(),
          ],
        ),
      ),
    );
  }
}

Widget gridview1() {
  List<dynamic> lst1 = [
    "assets/iphone 12.jpg",
    "assets/note 20 ultra.jpg",
    "assets/macbook air.jpg",
    "assets/Macbook Pro.jpg",
    "assets/Gaming PC.jpg",
    "assets/Backlit-Keyboard.jpg",
    "assets/Mercedes.jpg",
    "assets/Roadster-car.jpg",
    "assets/Roadster-Bike.jpg",
    "assets/Royal-Field.jpg",
    "assets/Wireless Headphone.png",
    "assets/Tab.jpg",
    "assets/Samsung-nx300.jpg",
    "assets/nokia-7-2.jpg",
  ];
  List<dynamic> lst2 = [
    "Iphone 12",
    "Note 20 Ultra",
    "Macbook Air",
    "Macbook Pro",
    "Gaming PC",
    "Backlit",
    "Mercedes",
    "Roadster",
    "Roadster",
    "Royal Field",
    "Wireless",
    "Tab",
    "Samsung",
    "Nokia",
  ];
  return GridView.count(
    scrollDirection: Axis.horizontal,
    // physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    crossAxisCount: 1,
    children: List.generate(
      lst1.length,
      (index) {
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "${lst1[index]}",
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7,
                  top: 7,
                  bottom: 7,
                ),
                child: Text(
                  "${lst2[index]}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  Text(
                    "5.0 (23 Reviews)",
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget gridview2() {
  List<dynamic> lst3 = [
    "assets/iphone 12.jpg",
    "assets/note 20 ultra.jpg",
    "assets/macbook air.jpg",
    "assets/Macbook Pro.jpg",
    "assets/Gaming PC.jpg",
    "assets/Backlit-Keyboard.jpg",
    "assets/Mercedes.jpg",
    "assets/Roadster-car.jpg",
    "assets/Roadster-Bike.jpg",
    "assets/Royal-Field.jpg",
    "assets/Wireless Headphone.png",
    "assets/Tab.jpg",
    "assets/Samsung-nx300.jpg",
    "assets/nokia-7-2.jpg",
  ];
  List<dynamic> lst4 = [
    "Iphone 12",
    "Note 20 Ultra",
    "Macbook Air",
    "Macbook Pro",
    "Gaming PC",
    "Backlit",
    "Mercedes",
    "Roadster",
    "Roadster",
    "Royal Field",
    "Wireless",
    "Tab",
    "Samsung",
    "Nokia",
  ];
  return GridView.count(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    crossAxisCount: 2,
    children: List.generate(
      lst3.length,
      (index) {
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "${lst3[index]}",
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7,
                  top: 7,
                  bottom: 7,
                ),
                child: Text(
                  "${lst4[index]}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 15,
                    ),
                    child: Icon(
                      Icons.star_rounded,
                    ),
                  ),
                  Text(
                    "5.0 (23 Review)",
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}

Widget listview() {
  List<dynamic> lst5 = [
    "Clotehs",
    "Electronics",
    "Households",
    "Appliances",
    "Others",
  ];
  List<dynamic> lst6 = [
    "5 items",
    "20 items",
    "9 items",
    "5 items",
    "15 items",
  ];
  List<dynamic> lst7 = [
    Icons.dry_cleaning,
    Icons.bolt,
    Icons.house,
    Icons.bolt,
    Icons.double_arrow,
  ];
  List<dynamic> screenslst = [
    Clothes(),
    Electronics(),
    Households(),
    Appliances(),
    Others(),
  ];
  return ListView.builder(
    // physics: ClampingScrollPhysics(),
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: lst5.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
            overlayColor: MaterialStateProperty.all(
              Colors.purple[200],
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => screenslst[index],
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Icon(
                    lst7[index],
                    color: Colors.purple,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${lst5[index]}',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${lst6[index]}',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
