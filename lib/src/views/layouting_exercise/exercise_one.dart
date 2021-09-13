import 'package:flutter/material.dart';

class ExerciseOneScreen extends StatefulWidget {
  const ExerciseOneScreen({Key? key}) : super(key: key);

  @override
  _ExerciseOneState createState() => _ExerciseOneState();
}

class _ExerciseOneState extends State<ExerciseOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161616),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(),
              SizedBox(height: 16),
              CreditCardWidget(),
              SizedBox(height: 32),
              BalanceWidget(),
              SizedBox(height: 16),
              Text(
                'Upcoming Payment',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16),
              UpcomingPaymentScroll(),
            ],
          ),
        ),
      ),
    );
  }
}

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Balance',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Text(
              '\$1000',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Chip(
          label: Text(
            '+50%',
          ),
          backgroundColor: Color(0xFF2EA764),
        ),
      ],
    );
  }
}

class UpcomingPaymentScroll extends StatelessWidget {
  const UpcomingPaymentScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i = 0; i < 10; i++)
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              color: Color(0xFF2A2A2A),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Salary',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Belong Interactive',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '+\$2000',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Someone!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Welcome Back',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        CircleAvatar(),
      ],
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Color(0xFF3AB06E),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text('1234 1234 1234 1234'),
            SizedBox(height: 64),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Card Holder'),
                    Text('Gundam'),
                  ],
                ),
                Text('Master Card'),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
