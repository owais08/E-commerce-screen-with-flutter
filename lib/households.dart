import 'package:flutter/material.dart';

class Households extends StatefulWidget {
  @override
  _HouseholdsState createState() => _HouseholdsState();
}

class _HouseholdsState extends State<Households> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Households Page",
            style: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.purple,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back"),
          )
        ],
      )),
    );
  }
}
