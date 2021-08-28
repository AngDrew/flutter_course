import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: Color(0xFFF2F8FC),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            SizedBox(height: size.height * 0.15),
            SizedBox(
              height: 150,
              child: Image.asset('assets/images/pngegg.png'),
            ),
            SizedBox(height: size.height * 0.15),
            MyAuthField(
              hint: 'example@email.com',
              icon: Icons.email,
              label: 'Email Address',
            ),
            const SizedBox(height: 16),
            MyAuthField(
              hint: 'Enter your password',
              icon: Icons.lock,
              label: 'Password',
              isPassword: true,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Register'),
                      ),
                    );
                  },
                  child: Text('Sign Up'),
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Lupa password'),
                      ),
                    );
                  },
                  child: Text('Forgot Password'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyAuthField extends StatefulWidget {
  const MyAuthField({
    Key? key,
    required this.label,
    this.hint = '',
    required this.icon,
    this.isPassword = false,
  }) : super(key: key);

  final String label;
  final String hint;
  final IconData icon;
  final bool isPassword;

  @override
  _MyAuthFieldState createState() => _MyAuthFieldState();
}

class _MyAuthFieldState extends State<MyAuthField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.5,
            blurRadius: 8,
            offset: Offset(0, 4),
            color: Colors.grey.withOpacity(0.5),
          )
        ],
      ),
      padding:
          const EdgeInsets.all(8) + const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    // isDense: true,
                    // contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    // labelText: 'Email Address',
                    // labelStyle: TextStyle(
                    //   fontSize: 18,
                    // ),
                    // hintText: 'Email Address',
                    hintText: widget.hint,
                    icon: Icon(
                      widget.icon,
                      size: 24,
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: !showPassword,
                ),
              ),
              if (widget.isPassword)
                IconButton(
                  onPressed: () {
                    showPassword = !showPassword;
                    setState(() {});
                  },
                  icon: Icon(
                    showPassword ? Icons.visibility_off : Icons.visibility,
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
