import 'package:flutter/material.dart';

class SpecsIcon extends StatelessWidget {
  final IconData icon;
  final String specs;

  SpecsIcon({this.icon, this.specs});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFF38315E),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          specs,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
