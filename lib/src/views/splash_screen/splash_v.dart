import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_course/src/utils/routes.dart';
import 'package:flutter_course/src/views/landing_screen/landing_v.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      simulateSplashScreen();
    });
  }

  Future<void> simulateSplashScreen() async {
    await Future.delayed(Duration(seconds: 2));

    Navigator.pushReplacementNamed(context, loginRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/pngegg.png',
              width: 100,
            ),
            const SizedBox(height: 16),
            // Padding(
            // padding: const EdgeInsets.only(top: 16.0),
            // child:
            CircularProgressIndicator(),
            // ),
          ],
        ),
      ),
    );
  }
}
