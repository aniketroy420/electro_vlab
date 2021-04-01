import 'package:flutter/material.dart';
import 'package:electro_vlab/Pallet_Icons.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class FirstPractical extends StatefulWidget {
  @override
  _FirstPracticalState createState() => _FirstPracticalState();
}

class _FirstPracticalState extends State<FirstPractical> {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  List<String> resistance = <String>[];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              resistance.length,
              (index) => TextField(
                decoration: InputDecoration(
                  hintText: resistance[index],
                  suffixIcon: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      resistance.remove(resistance[index]);
                      setState(() {});
                    },
                  ),
                ),
              ),
            ),
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {
                    resistance.add('TextField ${counter + 1}');
                    counter++;
                    setState(() {});
                  },
                  child: Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    resistance.clear();
                    counter = 0;
                    setState(() {});
                  },
                  child: Text('Delete all'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
