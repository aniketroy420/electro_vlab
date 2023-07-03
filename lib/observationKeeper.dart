import 'package:electro_vlab/GraphTable.dart';
import 'package:electro_vlab/widgets.dart';
import 'package:flutter/material.dart';
import 'observationBrain.dart';
class Observation extends StatefulWidget {
 @override
 _ObservationState createState() => _ObservationState();
}
class _ObservationState extends State<Observation> {
 @override
 List<bool> active = [false, false, false, false, false];
 Widget build(BuildContext context) {
 return Scaffold(
 body: DefaultTabController(
 length: 5,
 child: Scaffold(
 appBar: AppBar(
 bottom: TabBar(
 isScrollable: true,
 tabs: [
 Tab(
 icon: Icon(Icons.assignment_outlined),
 text: '1st Observation'),
 Tab(
 icon: Icon(Icons.assignment_outlined),
 text: '2nd Observation'),
 Tab(
 icon: Icon(Icons.assignment_outlined),
 text: '3rd Observation'),
 Tab(
 icon: Icon(Icons.assignment_outlined),
 text: '4th Observation'),
 Tab(

 icon: Icon(Icons.assignment_outlined),
 text: '5th Observation'),
 ],
 ),
 title: Text('Observation'),
 ),
 body: TabBarView(
 children: [
 Container(
 child: Column(
 children: [
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: rF(track: resistorCounter),
 ),
 RaisedButton(
 child: Text('Get Results'),
 color: Colors.blueGrey,
 onPressed: () {
 setState(() {
 eResistance[0] += r0 + r1 + r2 + r3 + r4;
 current[0] = volt / eResistance[0];
 active[0] = true;
 r0 = r1 = r2 = r3 = r4 = 0;
 });
 },
 ),
 EResistance(
 active: active[0],
 n: 0,
 ),
 Current(active: active[0], n: 0),
 ],
 ),
 ),
 Container(
 child: Column(

 children: [
 rF(track: resistorCounter),
 RaisedButton(
 child: Text('Get Results'),
 color: Colors.blueGrey,
 onPressed: () {
 setState(() {
 eResistance[1] += r0 + r1 + r2 + r3 + r4;
 current[1] = volt / eResistance[1];
 active[1] = true;
 r0 = r1 = r2 = r3 = r4 = 0;
 });
 },
 ),
 EResistance(
 active: active[1],
 n: 1,
 ),
 Current(active: active[1], n: 1),
 ],
 ),
 ),
 Container(
 child: Column(
 children: [
 rF(track: resistorCounter),
 RaisedButton(
 child: Text('Get Results'),
 color: Colors.blueGrey,
 onPressed: () {
 setState(() {
 eResistance[2] += r0 + r1 + r2 + r3 + r4;
 current[2] = volt / eResistance[2];
 active[2] = true;
 r0 = r1 = r2 = r3 = r4 = 0;
 });
 },

 ),
 EResistance(
 active: active[2],
 n: 2,
 ),
 Current(active: active[2], n: 2),
 ],
 ),
 ),
 Container(
 child: Column(
 children: [
 rF(track: resistorCounter),
 RaisedButton(
 child: Text('Get Results'),
 color: Colors.blueGrey,
 onPressed: () {
 setState(() {
 eResistance[3] += r0 + r1 + r2 + r3 + r4;
 current[3] = volt / eResistance[3];
 active[3] = true;
 r0 = r1 = r2 = r3 = r4 = 0;
 });
 },
 ),
 EResistance(
 active: active[3],
 n: 3,
 ),
 Current(active: active[3], n: 3),
 ],
 ),
 ),
 Container(
 child: Column(
 children: [
 rF(track: resistorCounter),

 RaisedButton(
 child: Text('Get Results'),
 color: Colors.blueGrey,
 onPressed: () {
 setState(() {
 eResistance[4] += r0 + r1 + r2 + r3 + r4;
 current[4] = volt / eResistance[4];
 active[4] = true;
 r0 = r1 = r2 = r3 = r4 = 0;
 });
 },
 ),
 EResistance(
 active: active[4],
 n: 4,
 ),
 Current(active: active[4], n: 4),
 Align(
 alignment: Alignment.bottomRight,
 child: RaisedButton(
 child: Text('Proceed'),
 color: Colors.blueGrey[900],
 onPressed: () {
 Navigator.push(
 context,
 MaterialPageRoute(
 builder: (context) => GraphTable(),
 ),
 );
 },
 ),
 ),
 ],
 ),
 ),
 ],
 ),

 ),
 ),
 );
 }
}
