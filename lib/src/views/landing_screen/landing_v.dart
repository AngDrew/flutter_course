import 'package:flutter/material.dart';
import 'package:flutter_course/src/utils/routes.dart';
import 'package:flutter_course/src/views/splash_screen/splash_v.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          //main axis: vertical
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, loginRoute);
              },
              child: Text('Login Example'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, loginRoute);
              },
              child: Text('Another Example'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, loginRoute);
            //   },
            //   child: Text('Login Example'),
            // ),
            //

            //
            // Expanded(
            //   child: SingleChildScrollView(
            //     //scrollable
            //     scrollDirection: Axis.horizontal,
            //     child: Row(
            //       //main axis: horizontal
            //       children: [
            //         // Expanded(
            //         //   flex: 2, // 2/4
            //         //   child: Container(
            //         //     // width: 100,
            //         //     height: 100,
            //         //     color: Colors.red,
            //         //   ),
            //         // ),
            //         // Expanded(
            //         //   child: Container(
            //         //     // width: 100,
            //         //     height: 100,
            //         //     color: Colors.green,
            //         //   ),
            //         // ),
            //         // Expanded(
            //         //   child: Container(
            //         //     // width: 100,
            //         //     height: 100,
            //         //     color: Colors.blue,
            //         //   ),
            //         // ),
            //         Container(
            //           width: MediaQuery.of(context).size.width * 0.4,
            //           height: 100,
            //           color: Colors.red,
            //         ),
            //         Container(
            //           width: MediaQuery.of(context).size.width * 0.4,
            //           height: 100,
            //           color: Colors.green,
            //         ),
            //         Container(
            //           width: MediaQuery.of(context).size.width * 0.4,
            //           height: 100,
            //           color: Colors.blue,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Expanded(
            //   //flex default is 1
            //   // 2 + 1 = 3
            //   // 2/3
            //   // 1/3
            //   child: Container(
            //     width: double.infinity,
            //     height: 100,
            //     color: Colors.yellow,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
