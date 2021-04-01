import 'package:electro_vlab/experiment.dart';
import 'package:electro_vlab/first_prac.dart';
import 'package:flutter/material.dart';
import 'package:electro_vlab/Second_prac.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electronic V-Lab',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Electronic V-Lab'),
      ),
      body:
      Column(
        children: [
          ListTile(
            leading: Icon(Icons.account_tree_outlined),
            title: Text('Kirchhoff\'s Law'),
            onTap: (){
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
            title: Text('Ohm\'s Law'),
            onTap: (){
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
            title: Text('Exp'),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Experiments(),
                ),
              );
            },
          ),


        ],
      ),

    );
  }
}
