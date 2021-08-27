import 'package:flutter/material.dart';
import 'package:flutter_course/src/views/splash_screen/splash_v.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    Key? key,
    this.myArguments,
  }) : super(key: key);

  final MyArguments? myArguments;

  @override
  Widget build(BuildContext context) {
    MyArguments? tes =
        ModalRoute.of(context)?.settings.arguments as MyArguments?;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Halo lagi bro ${tes?.name ?? myArguments?.name}'),
          ],
        ),
      ),
    );
  }
}
