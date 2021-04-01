import 'package:flutter/material.dart';
import 'package:electro_vlab/Pallet_Icons.dart';

class PracticalArea extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    bool accepted = false;
    return Scaffold(
        appBar: AppBar(
          title: Text('Make your circuit'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Draggable(
                data: 'Flutter',
                child: PIcon(imageName: 'images/resistor-32290_1280.webp'),

                childWhenDragging: Container(),
                feedback: PIcon(imageName: 'images/resistor-32290_1280.webp',),

              ),

              DragTarget(
                builder: (context, List<String> candidateData, rejectedData) {
                  return accepted
                      ? PIcon(imageName: 'images/resistor-32290_1280.webp')
                      : Container();
                }, onWillAccept: (data) {
                return true;
              }, onAccept: (data) {
                accepted = true;
              },),

            ],
          ),
        )

    );
  }
}