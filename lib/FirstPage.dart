import 'package:flutter/material.dart';
import 'FirstPractical.dart';
import 'SecondPractical.dart';

import 'experiment.dart';
class FirstPage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Electronic V-Lab'),
 ),
 body: Column(
 children: [
 ListTile(
 leading: Icon(Icons.account_tree_outlined),
 title: Text('Ohm\'s Law'),
 onTap: () {
 Navigator.push(
 context,
 MaterialPageRoute(
 builder: (context) => FirstPractical(),
 ),
 );
 },
 ),
 ListTile(
 leading: Icon(Icons.account_tree_outlined),
 title: Text('Kirchhoff\'s Law (Under Development)'),
 onTap: () {
 Navigator.push(
 context,
 MaterialPageRoute(
 builder: (context) => SecondPractical(),
 ),
 );
 },
 ),
 ListTile(
 leading: Icon(Icons.account_tree_outlined),

 title: Text('Experiment 3'),
 onTap: () {
 Navigator.push(
 context,
 MaterialPageRoute(
 builder: (context) => Experiments(),
 ),
 );
 },
 ),
 ListTile(
 leading: Icon(Icons.account_tree_outlined),
 title: Text('Experiment 4'),
 onTap: () {},
 ),
 ListTile(
 leading: Icon(Icons.account_tree_outlined),
 title: Text('Experiment 5'),
 onTap: () {},
 ),
 ],
 ),
 );
 }
}
