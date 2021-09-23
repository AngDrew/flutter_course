import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimationExerciseScreen extends StatefulWidget {
  const AnimationExerciseScreen({Key? key}) : super(key: key);

  @override
  _AnimationExerciseScreenState createState() =>
      _AnimationExerciseScreenState();
}

class _AnimationExerciseScreenState extends State<AnimationExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            StatefulExample(),
            StatelessExample(),
          ],
        ),
      ),
    );
  }
}

class StatefulExample extends StatefulWidget {
  const StatefulExample({Key? key}) : super(key: key);

  @override
  _StatefulExampleState createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int i = 0;

  // void optionalNamedParam({String? name}) {
  //   //
  // }

  // void optionalPositionedParam([String? name]) {
  //   //
  // }

  // void positonalParam(String name) {
  //   //
  // }

  // void combinedParamOne(String name, {String? fullName}) {
  //   //
  // }

  // void combinedParamTwo(String name, [String? fullName]) {
  //   //
  // }

  @override
  Widget build(BuildContext context) {
    print('Stateful Rebuild');
    // optionalNamedParam(name: 'Andrew');
    // optionalPositionedParam('Andrew');
    // combinedParamOne('Andrew', fullName: 'Andrew Anggada');
    // combinedParamTwo('Andrew', 'Andrew Anggada');

    return Column(
      children: [
        Text('Stateful'),
        Text('$i'),
        ElevatedButton(
          onPressed: () {
            i++;

            setState(() {});
            // annonymous method: (){}
            // (){return 1;} int Function();
            // (int index){} void Function(int);
            // (String name, {int index}){} void Function(String, {int})
            //
          },
          child: Text('Increment'),
        ),
        ElevatedButton(
          onPressed: () {
            i--;

            setState(() {});
          },
          child: Text('Decrement'),
        ),
      ],
    );
  }
}

class StatelessExample extends StatelessWidget {
  StatelessExample({Key? key}) : super(key: key);
  int i = 0;

  @override
  Widget build(BuildContext context) {
    print('Stateless Rebuild');

    return Column(
      children: [
        Text('Stateless'),
        Text('$i'),
        ElevatedButton(
          onPressed: () {
            i++;
          },
          child: Text('Increment'),
        ),
        ElevatedButton(
          onPressed: () {
            i--;
          },
          child: Text('Decrement'),
        ),
      ],
    );
  }
}
