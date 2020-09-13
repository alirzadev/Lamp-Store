import 'package:flutter/material.dart';

class QuantityButton extends StatefulWidget {
  final int quantity;
  final VoidCallback onPressedAdd;
  final VoidCallback onPressedRemove;

  QuantityButton(
      {@required this.quantity,
      @required this.onPressedAdd,
      @required this.onPressedRemove});

  @override
  _QuantityButtonState createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: Color(0xFF5F5980),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            onTap: widget.onPressedRemove,
            child: Icon(
              Icons.remove,
              color: Color(0xFFF3BB7E),
            ),
          ),
          Text(
            widget.quantity.toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: widget.onPressedAdd,
            child: Icon(
              Icons.add,
              color: Color(0xFFF3BB7E),
            ),
          ),
        ],
      ),
    );
  }
}
