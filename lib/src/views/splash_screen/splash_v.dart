import 'package:flutter/material.dart';
import 'package:flutter_course/src/utils/routes.dart';
import 'package:flutter_course/src/views/landing_screen/landing_v.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('HALO DUNIA'),
            ElevatedButton(
              child: Text('PINDAH LAYAR'),
              onPressed: () {
                // pindahScreen(tes: '');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LandingScreen(
                      myArguments: MyArguments('Andrewwwww', age: 23),
                    ),
                  ),
                );
                // Navigator.pushNamed(context, landingRoute,
                //     arguments: MyArguments('Andrew', age: 23));

                // Navigator.pop(context);
                // Navigator.pushReplacementNamed(context, landingRoute);
              },
            ),
          ],
        ),
      ),
    );
  }

  // void pindahScreen({String? tes}) {
  //   // () {} namanya anonynmous method

  //   // Navigator.pushNamed(context, landingRoute);
  //   MyArguments tes = MyArguments('', age: 0);
  // }
}

class MyArguments {
  const MyArguments(this.name, {required this.age});
  // positional arg/param
  // const MyArguments(
  //   this.name,
  //   this.age,
  // );
  // optional arg/param
  // const MyArguments({
  //   required this.name,
  //   required this.age,
  // });
  // optional positional arg/param
  // const MyArguments([
  //   this.name,
  //   this.age,
  // ]);

  final String name;
  final int age;

  @override
  String toString() => 'name: $name, age: $age';
}
