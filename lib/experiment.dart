import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'conatantsAndWidgets.dart';
//import 'Pallet_Icons.dart';
import 'card.dart';
import 'dart:math';

class Experiments extends StatefulWidget {
  @override
  _ExperimentsState createState() => _ExperimentsState();
}

bool animation = false;

class _ExperimentsState extends State<Experiments> {
  List<double> width = [47.0, 47.0, 47.0, 47.0, 47.0, 47.0];
  List<double> height = [50.0, 50.0, 50.0, 50.0, 50.0, 50.0];

  List<Color> color = [
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent
  ];

  void horizontalWire(int x) {
    if (animation == false) {
      animation = true;
      height[x] = 5.0;
      width[x] = 50.0;
      color[x] = Colors.black;
    } else {
      animation = false;
      height[x] = 50.0;
      width[x] = 70.0;
      color[x] = Colors.transparent;
    }
  }

  Widget wire = Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 25.0,
          ),
          Center(
            child: Row(
              children: [
                Container(
                  width: 32.5,
                  height: 5.0,
                  color: Colors.transparent,
                ),
                Container(
                  width: 37.5,
                  height: 5.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 5.0,
              height: 35.0,
              color: Colors.black,
            ),
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text('Expi1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Colors.green,
                    cardChild: Column(
                      children: <Widget>[
                        Text('Drag n Drop to make a circuit'),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Expanded(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Draggable(
                                    data: 'Resistor',
                                    child: instrument[0],
                                    feedback: instrument[0],
                                    childWhenDragging: instrument[0],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Draggable(
                                    data: 'Battery',
                                    child: instrument[1],
                                    feedback: instrument[1],
                                    childWhenDragging: instrument[1],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Draggable(
                                    data: 'Voltmeter',
                                    child: instrument[2],
                                    feedback: instrument[2],
                                    childWhenDragging: instrument[2],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Draggable(
                                    data: 'Ammeter',
                                    child: instrument[3],
                                    feedback: instrument[3],
                                    childWhenDragging: instrument[3],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Draggable(
                                    data: 'Ammeter2',
                                    child: instrument[4],
                                    feedback: instrument[4],
                                    childWhenDragging: instrument[4],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                ReusableCard(
                  colour: Colors.green,
                  cardChild: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onLongPress: () {},
                            onDoubleTap: () {
                              setState(() {
                                accepted[0] = false;
                              });
                            },
                            child: DragTarget(
                              builder: (context, List<String> candidateData,
                                  rejectedData) {
                                return Container(
                                  child: accepted[0]
                                      ? Transform.rotate(
                                          angle: -pi / 4, child: drags[x0])
                                      : drags[0],
                                );
                              },
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                if (data == 'Resistor') {
                                  x0 = 1;
                                } else if (data == 'Battery') {
                                  x0 = 2;
                                } else if (data == 'Voltmeter') {
                                  x0 = 3;
                                } else if (data == 'Ammeter') {
                                  x0 = 4;
                                } else if (data == 'Ammeter2') {
                                  x0 = 5;
                                }
                                setState(() {
                                  accepted[0] = true;
                                });
                              },
                            ),
                          ),
                          Stack(
                            children: [
                              Positioned(
                                left: 20,
                                child: Container(
                                  width: 2.0,
                                  height: 80.0,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    horizontalWire(0);
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  width: 40.0,
                                  height: 80.0,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        AnimatedContainer(
                                            duration: Duration(seconds: 1),
                                            width: width[0],
                                            height: height[0],
                                            color: color[0]),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                accepted[1] = false;
                              });
                            },
                            child: DragTarget(
                              builder: (context, List<String> candidateData,
                                  rejectedData) {
                                return Container(
                                  child: accepted[1] ? drags[x1] : drags[0],
                                );
                              },
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                if (data == 'Resistor') {
                                  x1 = 1;
                                } else if (data == 'Battery') {
                                  x1 = 2;
                                } else if (data == 'Voltmeter') {
                                  x1 = 3;
                                } else if (data == 'Ammeter') {
                                  x1 = 4;
                                } else if (data == 'Ammeter2') {
                                  x1 = 5;
                                }
                                setState(() {
                                  accepted[1] = true;
                                });
                              },
                            ),
                          ),
                          Stack(
                            children: [
                              Positioned(
                                left: 20,
                                child: Container(
                                  width: 2.0,
                                  height: 80.0,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    horizontalWire(1);
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  width: 40.0,
                                  height: 80.0,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        AnimatedContainer(
                                            duration: Duration(seconds: 1),
                                            width: width[1],
                                            height: height[1],
                                            color: color[1]),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                accepted[2] = false;
                              });
                            },
                            child: DragTarget(
                              builder: (context, List<String> candidateData,
                                  rejectedData) {
                                return Container(
                                  child: accepted[2]
                                      ? Transform.rotate(
                                          angle: pi / 4, child: drags[x2])
                                      : drags[0],
                                );
                              },
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                if (data == 'Resistor') {
                                  x2 = 1;
                                } else if (data == 'Battery') {
                                  x2 = 2;
                                } else if (data == 'Voltmeter') {
                                  x2 = 3;
                                } else if (data == 'Ammeter') {
                                  x2 = 4;
                                } else if (data == 'Ammeter2') {
                                  x2 = 5;
                                }
                                setState(() {
                                  accepted[2] = true;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 300,
                        height: 30.0,
                        child: Stack(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Positioned(
                              left: 5.0,
                              top: 15.0,
                              child: Container(
                                width: 400.0,
                                height: 2.0,
                                color: Colors.blueGrey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SizedBox(
                          //   width: 10.0,
                          // ),
                          // GestureDetector(
                          //   onDoubleTap: () {
                          //     setState(() {
                          //       accepted[3] = false;
                          //     });
                          //   },
                          //   child: DragTarget(
                          //     builder: (context, List<String> candidateData,
                          //         rejectedData) {
                          //       return Container(
                          //         child: accepted[3] ? drags[x3] : drags[0],
                          //       );
                          //     },
                          //     onWillAccept: (data) {
                          //       return true;
                          //     },
                          //     onAccept: (data) {
                          //       if (data == 'Resistor') {
                          //         x3 = 1;
                          //       } else if (data == 'Battery') {
                          //         x3 = 2;
                          //       } else if (data == 'Voltmeter') {
                          //         x3 = 3;
                          //       } else if (data == 'Ammeter') {
                          //         x3 = 4;
                          //       } else if (data == 'Ammeter2') {
                          //         x3 = 5;
                          //       }
                          //       setState(() {
                          //         accepted[3] = true;
                          //       });
                          //     },
                          //   ),
                          // ),
                          // Stack(
                          //   children: [
                          //     Positioned(
                          //       left: 20,
                          //       child: Container(
                          //         width: 2.0,
                          //         height: 80.0,
                          //         color: Colors.blueGrey,
                          //       ),
                          //     ),
                          //     GestureDetector(
                          //       onTap: () {
                          //         setState(() {
                          //           horizontalWire(2);
                          //         });
                          //       },
                          //       child: Container(
                          //         color: Colors.transparent,
                          //         width: 40.0,
                          //         height: 80.0,
                          //         child: Center(
                          //           child: Stack(
                          //             children: <Widget>[
                          //               AnimatedContainer(
                          //                   duration: Duration(seconds: 1),
                          //                   width: width[2],
                          //                   height: height[2],
                          //                   color: color[2]),
                          //             ],
                          //           ),
                          //         ),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                accepted[4] = false;
                              });
                            },
                            child: DragTarget(
                              builder: (context, List<String> candidateData,
                                  rejectedData) {
                                return Container(
                                  child: accepted[4] ? drags[x4] : drags[0],
                                );
                              },
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                if (data == 'Resistor') {
                                  x4 = 1;
                                } else if (data == 'Battery') {
                                  x4 = 2;
                                } else if (data == 'Voltmeter') {
                                  x4 = 3;
                                } else if (data == 'Ammeter') {
                                  x4 = 4;
                                } else if (data == 'Ammeter2') {
                                  x4 = 5;
                                }
                                setState(() {
                                  accepted[4] = true;
                                });
                              },
                            ),
                          ),
                          Stack(
                            children: [
                              Positioned(
                                left: 20,
                                child: Container(
                                  width: 2.0,
                                  height: 80.0,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    horizontalWire(3);
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  width: 40.0,
                                  height: 80.0,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        AnimatedContainer(
                                            duration: Duration(seconds: 1),
                                            width: width[3],
                                            height: height[3],
                                            color: color[3]),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                accepted[5] = false;
                              });
                            },
                            child: DragTarget(
                              builder: (context, List<String> candidateData,
                                  rejectedData) {
                                return Container(
                                  child: accepted[5] ? drags[x5] : drags[0],
                                );
                              },
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                if (data == 'Resistor') {
                                  x5 = 1;
                                } else if (data == 'Battery') {
                                  x5 = 2;
                                } else if (data == 'Voltmeter') {
                                  x5 = 3;
                                } else if (data == 'Ammeter') {
                                  x5 = 4;
                                } else if (data == 'Ammeter2') {
                                  x5 = 5;
                                }
                                setState(() {
                                  accepted[5] = true;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 300,
                        height: 30.0,
                        child: Stack(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Positioned(
                              left: 5.0,
                              top: 15.0,
                              child: Container(
                                width: 400.0,
                                height: 2.0,
                                color: Colors.blueGrey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // SizedBox(
                          //   width: 10.0,
                          // ),
                          GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                accepted[6] = false;
                              });
                            },
                            child: DragTarget(
                              builder: (context, List<String> candidateData,
                                  rejectedData) {
                                return Container(
                                  child: accepted[6]
                                      ? Transform.rotate(
                                          angle: pi / 8, child: drags[x6])
                                      : drags[0],
                                );
                              },
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                if (data == 'Resistor') {
                                  x6 = 1;
                                } else if (data == 'Battery') {
                                  x6 = 2;
                                } else if (data == 'Voltmeter') {
                                  x6 = 3;
                                } else if (data == 'Ammeter') {
                                  x6 = 4;
                                } else if (data == 'Ammeter2') {
                                  x6 = 5;
                                }
                                setState(() {
                                  accepted[6] = true;
                                });
                              },
                            ),
                          ),
                          Stack(
                            children: [
                              Positioned(
                                left: 20,
                                child: Container(
                                  width: 2.0,
                                  height: 80.0,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    horizontalWire(4);
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  width: 40.0,
                                  height: 100.0,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        AnimatedContainer(
                                            duration: Duration(seconds: 1),
                                            width: width[4],
                                            height: height[4],
                                            color: color[4]),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                accepted[7] = false;
                              });
                            },
                            child: DragTarget(
                              builder: (context, List<String> candidateData,
                                  rejectedData) {
                                return Container(
                                  child: accepted[7] ? drags[x7] : drags[0],
                                );
                              },
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                if (data == 'Resistor') {
                                  x7 = 1;
                                } else if (data == 'Battery') {
                                  x7 = 2;
                                } else if (data == 'Voltmeter') {
                                  x7 = 3;
                                } else if (data == 'Ammeter') {
                                  x7 = 4;
                                } else if (data == 'Ammeter2') {
                                  x7 = 5;
                                }
                                setState(() {
                                  accepted[7] = true;
                                });
                              },
                            ),
                          ),
                          Stack(
                            children: [
                              Positioned(
                                left: 20,
                                child: Container(
                                  width: 2.0,
                                  height: 80.0,
                                  color: Colors.blueGrey,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    horizontalWire(5);
                                  });
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  width: 40.0,
                                  height: 100.0,
                                  child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        AnimatedContainer(
                                            duration: Duration(seconds: 1),
                                            width: width[5],
                                            height: height[5],
                                            color: color[5]),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onDoubleTap: () {
                              setState(() {
                                accepted[8] = false;
                              });
                            },
                            child: DragTarget(
                              builder: (context, List<String> candidateData,
                                  rejectedData) {
                                return Container(
                                  child: accepted[8]
                                      ? Transform.rotate(
                                          angle: -pi / 8, child: drags[x8])
                                      : drags[0],
                                );
                              },
                              onWillAccept: (data) {
                                return true;
                              },
                              onAccept: (data) {
                                if (data == 'Resistor') {
                                  x8 = 1;
                                } else if (data == 'Battery') {
                                  x8 = 2;
                                } else if (data == 'Voltmeter') {
                                  x8 = 3;
                                } else if (data == 'Ammeter') {
                                  x8 = 4;
                                } else if (data == 'Ammeter2') {
                                  x8 = 5;
                                }
                                setState(() {
                                  accepted[8] = true;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
