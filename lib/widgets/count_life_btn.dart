import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smagic_life_counter/util/constants.dart';

class LifeCountBtn extends StatefulWidget {
  const LifeCountBtn({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  final String text;
  final GestureTapCallback onPressed;

  @override
  _LifeCountBtnState createState() => _LifeCountBtnState();
}

class _LifeCountBtnState extends State<LifeCountBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(widget.text, style: textFieldStyle),
        style: ButtonStyle(
            padding:
                MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(25)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.red)))),
        onPressed: widget.onPressed);
  }
}
