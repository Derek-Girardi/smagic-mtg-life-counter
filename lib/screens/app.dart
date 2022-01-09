import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smagic_life_counter/util/constants.dart';
import '../widgets/count_life_btn.dart';
import '../cubit/counter_cubit.dart';

class SmagicApp extends StatelessWidget {
  const SmagicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'test',
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        home: const MyHomePage(title: 'my home page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        //Background color gradient
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff3b444b),
              Color(0xff353839),
              Color(0xff232b2b),
              Color(0xff0e1111),
            ],
                stops: [
              0.1,
              0.4,
              0.7,
              0.9
            ])),
      ),
      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/frog.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 40.0),
              Text('Choose player count', style: textFieldStyle),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  LifeCountBtn(text: '1', onPressed: () => null),
                  const SizedBox(width: 10.0),
                  LifeCountBtn(text: '2', onPressed: () => null),
                  const SizedBox(width: 10.0),
                  LifeCountBtn(text: '3', onPressed: () => null),
                  const SizedBox(width: 10.0),
                  LifeCountBtn(text: '4', onPressed: () => null),
                  const SizedBox(width: 10.0),
                  LifeCountBtn(text: '5', onPressed: () => null),
                  const SizedBox(width: 10.0),
                  LifeCountBtn(text: '6', onPressed: () => null),
                ],
              ),
              // _playerCountBtnRow(),
              const SizedBox(height: 40.0),
              Text('Choose Starting life', style: textFieldStyle),
              const SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  LifeCountBtn(text: '20', onPressed: () => null),
                  const SizedBox(width: 10.0),
                  LifeCountBtn(text: '30', onPressed: () => null),
                  const SizedBox(width: 10.0),
                  LifeCountBtn(text: '40', onPressed: () => null),
                ],
              ),
            ],
          ))
    ]));
  }
}
