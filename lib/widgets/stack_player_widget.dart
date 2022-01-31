import 'package:flutter/material.dart';
//import 'package:smagic_life_counter/util/constants.dart';

///Reusable widget for player playspace
///
///This custom widget is for where the player can increment or decrement
///life points. This will be used in multiple screens so it became its own widget for use

class PlayerStackWidget extends StatefulWidget {
  const PlayerStackWidget({Key? key}) : super(key: key);

  @override
  _PlayerStackWidgetState createState() => _PlayerStackWidgetState();
}

class _PlayerStackWidgetState extends State<PlayerStackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Card(
          color: Colors.yellow,
          child: Container(
              //constraints: const BoxConstraints.expand(),
              child: Row(
            children: <Widget>[
              Expanded(
                  child: ElevatedButton(
                      child: const Text("Increment"),
                      onPressed: () => null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.black.withOpacity(0.00)),
                        minimumSize: MaterialStateProperty.all(
                            const Size(double.infinity, double.infinity)),
                      ))),
              Expanded(
                  child: SizedBox.expand(
                      child: ElevatedButton(
                          child: const Text("decrement"),
                          onPressed: () => null,
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black.withOpacity(0.00)),
                          )))),
            ],
          )))
    ]);
  }
}
