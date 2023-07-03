import 'package:flutter/material.dart';
import 'widgets.dart';
int volt; //Voltage Keeper
int resistorCounter = 0; //Counter for fields
int ammeterCounter = 0;
List<double> current = [0, 0, 0, 0, 0]; //Equivalent Current keeper
//List<int> erCalculator = [0, 0, 0, 0, 0];
List<int> eResistance = [0, 0, 0, 0, 0]; //Equivalent Resistance keeper
//Individual Resistance counter to get Equivalent Resistance
int r0 = 0;
int r1 = 0;
int r2 = 0;
int r3 = 0;
int r4 = 0;
// ignore: must_be_immutable
//Text Field Widget Function
// ignore: must_be_immutable
class ObservationText extends StatelessWidget {
 @override
 String label;
 String hint;
 int parameter;
 ObservationText(
 {@required this.label, @required this.hint, @required this.parameter});
 Widget build(BuildContext context) {
 return Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,

 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: label,
 hintText: hint,
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 parameter = int.parse(text);
 print(parameter);
 },
 ),
 );
 }
}
//Equivalent Current Container
// ignore: must_be_immutable
class Current extends StatelessWidget {
 bool active;
 int n;
 Current({@required this.active, @required this.n});
 @override

 Widget build(BuildContext context) {
 if (active == false)
 return Container();
 else
 return Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 width: 250,
 child: Padding(
 padding: const EdgeInsets.all(8.0),
 child: Center(
 child: Row(
 children: [
 Expanded(
 child: Text(
 'Current= V/R or I = ${current[n].toStringAsFixed(2)}',
 style: TextStyle(fontSize: 20),
 textAlign: TextAlign.center,
 ),
 ),
 ],
 ),
 ),
 ),
 decoration: BoxDecoration(
 //color: Colors.transparent,
 border: Border.all(color: Colors.blueGrey, width: 2),
 ),
 ),
 );
 }
}
//Equivalent Resistance Calculator
// ignore: must_be_immutable
class EResistance extends StatelessWidget {
 bool active;

 int n;
 EResistance({@required this.active, @required this.n});
 @override
 Widget build(BuildContext context) {
 if (active == false)
 return Container();
 else
 return Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 width: 200,
 child: Padding(
 padding: const EdgeInsets.all(8.0),
 child: Center(
 child: Row(
 children: [
 Expanded(
 child: Text(
 'Equivalent R = ${eResistance[n].toString()}',
 style: TextStyle(fontSize: 20),
 textAlign: TextAlign.center,
 ),
 ),
 ],
 ),
 ),
 ),
 decoration: BoxDecoration(
 //color: Colors.transparent,
 border: Border.all(color: Colors.blueGrey, width: 2),
 ),
 ),
 );
 }
}

//Number of fields required as per the Resistor counter in the ObservationTable
Widget field1 = Container(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R1',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),

 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r0 = int.parse(text);
 print("r0 $r0");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 ],
 ),
);
Widget field2 = Container(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R1',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(

 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r0 = int.parse(text);
 print("r0 $r0");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R2',
 style: TextStyle(fontSize: 20),

 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r1 = int.parse(text);
 print("r1 $r1");
 },
 ),
 ),
 ],
 ),
 ),
 ),

 ],
 ),
);
Widget field3 = Container(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R1',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,

 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r0 = int.parse(text);
 print("r0 $r0");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R2',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),

 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r1 = int.parse(text);
 print("r1 $r1");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R3',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,

 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r2 = int.parse(text);
 print("r2 $r2");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 ],
 ),
);
Widget field4 = Container(

 child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R1',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(

 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r0 = int.parse(text);
 print("r0 $r0");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R2',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,

 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r1 = int.parse(text);
 print("r1 $r1");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R3',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,

 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r2 = int.parse(text);
 print("r2 $r2");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R4',
 style: TextStyle(fontSize: 20),
 ),
 Container(

 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r3 = int.parse(text);
 print("r3 $r3");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 ],
 ),

);
Widget field5 = Container(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
 children: [
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R1',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),

 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r0 = int.parse(text);
 print("r0 $r0");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R2',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",

 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r1 = int.parse(text);
 print("r1 $r1");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R3',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(

 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r2 = int.parse(text);
 print("r2 $r2");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R4',

 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {
 r3 = int.parse(text);
 print("r3 $r3");
 },
 ),
 ),
 ],
 ),
 ),

 ),
 Padding(
 padding: const EdgeInsets.all(8.0),
 child: Container(
 child: Row(
 children: [
 Text(
 'R5',
 style: TextStyle(fontSize: 20),
 ),
 Container(
 width: 300,
 child: TextField(
 textAlign: TextAlign.center,
 keyboardType: TextInputType.number,
 decoration: InputDecoration(
 enabledBorder: const OutlineInputBorder(
 borderSide: const BorderSide(
 color: Colors.blueGrey,
 width: 2.0,
 ),
 ),
 labelText: "Ohm",
 hintText: "Input Resistance",
 hintStyle: TextStyle(
 color: Colors.white30,
 fontWeight: FontWeight.w300,
 ),
 labelStyle: TextStyle(
 color: Colors.white,
 fontWeight: FontWeight.w500,
 ),
 contentPadding: EdgeInsets.all(8.0),
 ),
 style: TextStyle(
 color: Colors.white, fontWeight: FontWeight.bold),
 onChanged: (text) {

 r4 = int.parse(text);
 print("r4 $r4");
 },
 ),
 ),
 ],
 ),
 ),
 ),
 ],
 ),
);
//Number of fields required's function.
// ignore: must_be_immutable
class rF extends StatelessWidget {
 int track;
 rF({@required this.track});
 @override
 Widget build(BuildContext context) {
 if (track == 1)
 return field1;
 else if (track == 2)
 return field2;
 else if (track == 3)
 return field3;
 else if (track == 4)
 return field4;
 else if (track == 5)
 return field5;
 else
 return Container();
 }
}
