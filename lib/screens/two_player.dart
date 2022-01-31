import 'package:flutter/material.dart';
import '../widgets/stack_player_widget.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

class TwoPlayer extends StatefulWidget {
  const TwoPlayer({
    Key? key,
  }) : super(key: key);

  @override
  _TwoPlayerState createState() => _TwoPlayerState();
}

class _TwoPlayerState extends State<TwoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisSize: MainAxisSize.max, children: const <Widget>[
      //do I need this mainAxis property?
      Expanded(child: PlayerStackWidget()),
      Expanded(child: PlayerStackWidget())
    ]));
  }
}
