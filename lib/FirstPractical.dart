import 'package:electro_vlab/observationKeeper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:electro_vlab/card.dart';
import 'widgets.dart';
import 'constants.dart';
import 'observationBrain.dart';
import 'first_prac.dart';

class SecondPractical extends StatefulWidget {
  @override
  _SecondPracticalState createState() => _SecondPracticalState();
}

class _SecondPracticalState extends State<SecondPractical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text('Expi1'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.green,
                      cardChild: Column(
                        children: <Widget>[
                          // Text('Drag n Drop to make a circuit'),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Expanded(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        dIcon(iconName: 'Resistor', iconNum: 0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: dIcon(
                                      iconName: 'Battery',
                                      iconNum: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: dIcon(
                                      iconName: 'Voltmeter',
                                      iconNum: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: dIcon(
                                      iconName: 'Ammeter',
                                      iconNum: 3,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: dIcon(
                                      iconName: 'Galvanometer',
                                      iconNum: 4,
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
              ReusableCard(
                colour: Colors.lightGreen,
                cardChild: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      //first row
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                x0 = 9;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x0 == 5) {
                                  resistorCounter--;
                                } else if (x0 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[0] = false;
                                x0 = 0;
                                print(resistorCounter);
                                print(" ");
                                print(ammeterCounter);
                              },
                            );
                          },
                          onDoubleTap: () {
                            setState(() {
                              x0 = 15;
                            });
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[0] ? drags[x0] : drags[x0],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x0 = 5;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x0 = 2;
                              } else if (data == 'Voltmeter') {
                                x0 = 3;
                              } else if (data == 'Ammeter') {
                                x0 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[0] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(0),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x1 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x1 = 10;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x1 == 1) {
                                  resistorCounter--;
                                } else if (x1 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[1] = false;
                                x1 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[1] ? drags[x1] : drags[x1],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x1 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x1 = 2;
                              } else if (data == 'Voltmeter') {
                                x1 = 3;
                              } else if (data == 'Ammeter') {
                                x1 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[1] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(1),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x2 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x2 = 10;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(() {
                              if (x2 == 1) {
                                resistorCounter--;
                              } else if (x2 == 4) {
                                ammeterCounter--;
                              }
                              accepted[2] = false;
                              x2 = 0;
                            });
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[2] ? drags[x2] : drags[x2],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x2 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x2 = 2;
                              } else if (data == 'Voltmeter') {
                                x2 = 3;
                              } else if (data == 'Ammeter') {
                                x2 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[2] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(2),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x3 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x3 = 11;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x3 == 6) {
                                  resistorCounter--;
                                } else if (x3 == 4) {
                                  ammeterCounter--;
                                }

                                accepted[3] = false;
                                x3 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[3] ? drags[x3] : drags[x3],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x3 = 6;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x3 = 2;
                              } else if (data == 'Voltmeter') {
                                x3 = 3;
                              } else if (data == 'Ammeter') {
                                x3 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[3] = true;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VerticalWire(0),
                        verticalSpacingCard,
                        VerticalWire(1),
                        verticalSpacingCard,
                        VerticalWire(2),
                        verticalSpacingCard,
                        VerticalWire(3),
                      ],
                    ),
                    Row(
                      //second row
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x4 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x4 = 12;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x4 == 1) {
                                  resistorCounter--;
                                } else if (x4 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[4] = false;
                                x4 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[4] ? drags[x4] : drags[x4],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x4 = 1;

                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x4 = 2;
                              } else if (data == 'Voltmeter') {
                                x4 = 3;
                              } else if (data == 'Ammeter') {
                                x4 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[4] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(3),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x5 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x5 = 10;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x5 == 1) {
                                  resistorCounter--;
                                } else if (x5 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[5] = false;
                                x5 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[5] ? drags[x5] : drags[x5],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x5 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x5 = 2;
                              } else if (data == 'Voltmeter') {
                                x5 = 3;
                              } else if (data == 'Ammeter') {
                                x5 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[5] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(4),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x6 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x6 = 10;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x6 == 1) {
                                  resistorCounter--;
                                } else if (x6 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[6] = false;
                                x6 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[6] ? drags[x6] : drags[x6],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x6 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x6 = 2;
                              } else if (data == 'Voltmeter') {
                                x6 = 3;
                              } else if (data == 'Ammeter') {
                                x6 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[6] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(5),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x7 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x7 = 12;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x7 == 1) {
                                  resistorCounter--;
                                } else if (x7 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[7] = false;
                                x7 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[7] ? drags[x7] : drags[x7],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x7 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x7 = 2;
                              } else if (data == 'Voltmeter') {
                                x7 = 3;
                              } else if (data == 'Ammeter') {
                                x7 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[7] = true;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VerticalWire(4),
                        verticalSpacingCard,
                        VerticalWire(5),
                        verticalSpacingCard,
                        VerticalWire(6),
                        verticalSpacingCard,
                        VerticalWire(7),
                      ],
                    ),
                    Row(
                      //3rd row
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x8 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x8 = 12;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x8 == 1) {
                                  resistorCounter--;
                                } else if (x8 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[8] = false;
                                x8 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[8] ? drags[x8] : drags[x8],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x8 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x8 = 2;
                              } else if (data == 'Voltmeter') {
                                x8 = 3;
                              } else if (data == 'Ammeter') {
                                x8 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[8] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(6),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x9 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x9 = 10;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x9 == 1) {
                                  resistorCounter--;
                                } else if (x9 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[9] = false;
                                x9 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[9] ? drags[x9] : drags[x9],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x9 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x9 = 2;
                              } else if (data == 'Voltmeter') {
                                x9 = 3;
                              } else if (data == 'Ammeter') {
                                x9 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[9] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(7),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x10 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x10 = 10;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x10 == 1) {
                                  resistorCounter--;
                                } else if (x10 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[10] = false;
                                x10 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[10] ? drags[x10] : drags[x10],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x10 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x10 = 2;
                              } else if (data == 'Voltmeter') {
                                x10 = 3;
                              } else if (data == 'Ammeter') {
                                x10 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[10] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(8),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x11 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x11 = 12;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x11 == 1) {
                                  resistorCounter--;
                                } else if (x11 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[11] = false;
                                x11 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[11] ? drags[x11] : drags[x11],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x11 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x11 = 2;
                              } else if (data == 'Voltmeter') {
                                x11 = 3;
                              } else if (data == 'Ammeter') {
                                x11 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[11] = true;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VerticalWire(8),
                        verticalSpacingCard,
                        VerticalWire(9),
                        verticalSpacingCard,
                        VerticalWire(10),
                        verticalSpacingCard,
                        VerticalWire(11),
                      ],
                    ),
                    Row(
                      //4th row
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x12 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x12 = 13;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x12 == 8) {
                                  resistorCounter--;
                                } else if (x12 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[12] = false;
                                x12 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[12] ? drags[x12] : drags[x12],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x12 = 8;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x12 = 2;
                              } else if (data == 'Voltmeter') {
                                x12 = 3;
                              } else if (data == 'Ammeter') {
                                x12 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[12] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(9),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x13 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x13 = 10;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x13 == 1) {
                                  resistorCounter--;
                                } else if (x13 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[13] = false;
                                x13 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[13] ? drags[x13] : drags[x13],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x13 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x13 = 2;
                              } else if (data == 'Voltmeter') {
                                x13 = 3;
                              } else if (data == 'Ammeter') {
                                x13 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[13] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(10),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x14 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x14 = 10;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x14 == 1) {
                                  resistorCounter--;
                                } else if (x14 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[14] = false;
                                x14 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[14] ? drags[x14] : drags[x14],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x14 = 1;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x14 = 2;
                              } else if (data == 'Voltmeter') {
                                x14 = 3;
                              } else if (data == 'Ammeter') {
                                x14 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[14] = true;
                                },
                              );
                            },
                          ),
                        ),
                        HorizontalWire(11),
                        GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              x15 = 15;
                            });
                          },
                          onTap: () {
                            setState(
                              () {
                                x15 = 14;
                              },
                            );
                          },
                          onLongPress: () {
                            setState(
                              () {
                                if (x15 == 1) {
                                  resistorCounter--;
                                } else if (x15 == 4) {
                                  ammeterCounter--;
                                }
                                accepted[15] = false;
                                x15 = 0;
                              },
                            );
                          },
                          child: DragTarget(
                            builder: (context, List<String> candidateData,
                                rejectedData) {
                              return Container(
                                child: accepted[15] ? drags[x15] : drags[x15],
                              );
                            },
                            onWillAccept: (data) {
                              return true;
                            },
                            onAccept: (data) {
                              if (data == 'Resistor') {
                                x15 = 7;
                                resistorCounter++;
                              } else if (data == 'Battery') {
                                x15 = 2;
                              } else if (data == 'Voltmeter') {
                                x15 = 3;
                              } else if (data == 'Ammeter') {
                                x15 = 4;
                                ammeterCounter++;
                              }
                              setState(
                                () {
                                  accepted[15] = true;
                                },
                              );
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: textField(),
                  ),
                  Container(
                    height: 40,
                    child: RaisedButton(
                      child: Text('Proceed'),
                      color: Colors.purple,
                      onPressed: () {
                        print("volt $volt");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Observation(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  GestureDetector VerticalWire(int v) {
    return GestureDetector(
      onTap: () {
        setState(() {
          verticalWire(v);
        });
      },
      child: Container(
        color: wire,
        width: 65.0,
        height: 30.0,
        child: Center(
          child: Stack(
            children: <Widget>[
              AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: vWidth[v],
                  height: vHeight[v],
                  color: vColor[v]),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  GestureDetector HorizontalWire(int h) {
    return GestureDetector(
      onTap: () {
        setState(() {
          horizontalWire(h);
        });
      },
      child: Container(
        color: wire,
        width: 27.0,
        height: 60.0,
        child: Center(
          child: Stack(
            children: <Widget>[
              AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: hWidth[h],
                  height: hHeight[h],
                  color: hColor[h]),
            ],
          ),
        ),
      ),
    );
  }
}
