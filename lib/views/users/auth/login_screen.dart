import 'package:flutter/material.dart';
import 'package:notificrossian/views/users/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login User Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(letterSpacing: 5, color: Colors.white),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Need an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                  child: Text('Sign Up here'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
