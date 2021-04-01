import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PIcon extends StatefulWidget {
  String imageName;
  double size;
  double ele;
  PIcon({@required this.imageName, @required this.size, @required this.ele});

  @override
  _PIconState createState() => _PIconState();
}

class _PIconState extends State<PIcon> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.ele,
      // shape: CircleBorder(),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      clipBehavior: Clip.hardEdge,
      color: Colors.green,
      child: Ink.image(
        image: AssetImage(widget.imageName),
        fit: BoxFit.cover,
        width: widget.size,
        height: widget.size,
        child: InkWell(
          onTap: () {},
        ),
      ),
    );
  }
}
