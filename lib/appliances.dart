import 'package:flutter/material.dart';

class Appliances extends StatefulWidget {
  @override
  _AppliancesState createState() => _AppliancesState();
}

class _AppliancesState extends State<Appliances> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Appliances Page",
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
