import 'package:electro_vlab/Pallet_Icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'experiment.dart';

//Color color = Colors.transparent;
Color wire = Colors.transparent;
//icons for DragTarget
Widget ammeter = PIcon(imageName: 'images/ammeter.png', size: 65, ele: 0.0);
Widget resistor = PIcon(imageName: 'images/resistor.png', size: 65, ele: 0.0);
Widget battery = PIcon(imageName: 'images/battery.png', size: 65, ele: 0.0);
Widget voltmeter = PIcon(imageName: 'images/voltmeter.png', size: 65, ele: 0.0);
Widget resistor1 = PIcon(imageName: 'images/resistor1.png', size: 65, ele: 0.0);
Widget resistor2 = PIcon(imageName: 'images/resistor2.png', size: 65, ele: 0.0);
Widget resistor3 = PIcon(imageName: 'images/resistor3.png', size: 65, ele: 0.0);
Widget resistor4 = PIcon(imageName: 'images/resistor4.png', size: 65, ele: 0.0);

//Icons for pallet
Widget pammeter = PIcon(imageName: 'images/ammeter.png', size: 70, ele: 8.0);
Widget presistor = PIcon(imageName: 'images/resistor.png', size: 70, ele: 8.0);
Widget pbattery = PIcon(imageName: 'images/battery.png', size: 70, ele: 8.0);
Widget pvoltmeter =
    PIcon(imageName: 'images/voltmeter.png', size: 70, ele: 8.0);

List<Widget> instruments = [
  //Icons that will go inside DragTargets
  resistor,
  battery,
  voltmeter,
  ammeter,
  resistor1,
  resistor2,
  resistor3,
  resistor4
];
List<Widget> instrument = [
  //Icons for the pallet
  presistor,
  pbattery,
  pvoltmeter,
  pammeter,
];

List<bool> accepted = [
  //Individual Booleans for each and every DragTarget
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
int x0 = 0; // Individual variables for each and every dragTarget
int x1 = 0;
int x2 = 0;
int x3 = 0;
int x4 = 0;
int x5 = 0;
int x6 = 0;
int x7 = 0;
int x8 = 0;
int x9 = 0;
int x10 = 0;
int x11 = 0;
int x12 = 0;
int x13 = 0;
int x14 = 0;
int x15 = 0;

//Widgets for the DragTarget
List<Widget> drags = [
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(color: Colors.blueGrey, width: 2),
    ),
  ), //0.Empty border container
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      color: Colors.transparent,
    ),
    child: Center(
      child: instruments[0],
    ),
  ), //1.horizontal resistor
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      //shape: BoxShape.circle,
      color: Colors.transparent,
    ),
    child: Center(
      child: instruments[1],
    ),
  ), //2.battery
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      //shape: BoxShape.circle,
      color: Colors.transparent,
    ),
    child: Center(
      child: instruments[2],
    ),
  ), //3.Voltmeter
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      //shape: BoxShape.circle,
      color: Colors.transparent,
    ),
    child: Center(
      child: instruments[3],
    ),
  ), //4.Ammeter
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      //shape: BoxShape.circle,
      color: Colors.transparent,
    ),
    child: Center(
      child: instruments[4],
    ),
  ), //5.topL resistor
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      //shape: BoxShape.circle,
      color: Colors.transparent,
    ),
    child: Center(
      child: instruments[5],
    ),
  ), //6.topR resistor
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      //shape: BoxShape.circle,
      color: Colors.transparent,
    ),
    child: Center(
      child: instruments[6],
    ),
  ), //7.bottomR resistor
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      //shape: BoxShape.circle,
      color: Colors.transparent,
    ),
    child: Center(
      child: instruments[7],
    ),
  ), //8. bottomL resistor
  boxWire(
      top: Colors.transparent,
      right: Colors.black,
      bottom: Colors.black,
      left: Colors.transparent), //9.
  boxWire(
      top: Colors.transparent,
      right: Colors.black,
      bottom: Colors.transparent,
      left: Colors.black), //10.
  boxWire(
      top: Colors.transparent,
      right: Colors.transparent,
      bottom: Colors.black,
      left: Colors.black), //11.
  boxWire(
      top: Colors.black,
      right: Colors.transparent,
      bottom: Colors.black,
      left: Colors.transparent), //12.
  boxWire(
      top: Colors.black,
      right: Colors.black,
      bottom: Colors.transparent,
      left: Colors.transparent), //13.
  boxWire(
      top: Colors.black,
      right: Colors.transparent,
      bottom: Colors.transparent,
      left: Colors.black), //14.
  Container(
    height: 65,
    width: 65,
    decoration: BoxDecoration(
      color: Colors.transparent,
    ),
  ), //15.
];

class boxWire extends StatelessWidget {
  Color top;
  Color left;
  Color right;
  Color bottom;
  boxWire(
      {@required this.top,
      @required this.right,
      @required this.bottom,
      @required this.left});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      color: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Center(
            child: Column(
              children: [
                Container(
                  width: 2.0,
                  height: 32.5,
                  color: top,
                ),
                Container(
                  width: 2.0,
                  height: 32.5,
                  color: bottom,
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              children: [
                Container(
                  width: 32.5,
                  height: 2.0,
                  color: left,
                ),
                Container(
                  width: 32.5,
                  height: 2.0,
                  color: right,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Width color and height for horizontal wires
List<double> hWidth = [
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0
];
List<double> hHeight = [
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0
];
List<Color> hColor = [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
];

//width height and color for vertical wires
List<double> vWidth = [
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0,
  27.0
];
List<double> vHeight = [
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0,
  50.0
];

List<Color> vColor = [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
];
List<bool> animationHorizontal = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
List<bool> animationVertical = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

Widget verticalSpacingCard = Container(
  width: 27.0,
  height: 30.0,
);

void horizontalWire(int x) {
  if (animationHorizontal[x] == false) {
    animationHorizontal[x] = true;
    hHeight[x] = 2.0;
    hWidth[x] = 27.0;
    hColor[x] = Colors.black;
  } else {
    animationHorizontal[x] = false;
    hHeight[x] = 60.0;
    hWidth[x] = 27.0;
    hColor[x] = Colors.transparent;
  }
}

void verticalWire(int y) {
  if (animationVertical[y] == false) {
    animationVertical[y] = true;
    vHeight[y] = 30.0;
    vWidth[y] = 2.0;
    vColor[y] = Colors.black;
  } else {
    animationVertical[y] = false;
    vHeight[y] = 30.0;
    vWidth[y] = 65.0;
    vColor[y] = Colors.transparent;
  }
}

//Draggable icons for the pallet on the top
class dIcon extends StatefulWidget {
  String iconName;
  int iconNum;
  dIcon({@required this.iconName, @required this.iconNum});

  @override
  _dIconState createState() => _dIconState();
}

class _dIconState extends State<dIcon> {
  @override
  Widget build(BuildContext context) {
    return Draggable(
      data: widget.iconName,
      child: instrument[widget.iconNum],
      feedback: instrument[widget.iconNum],
      childWhenDragging: instrument[widget.iconNum],
    );
  }
}
