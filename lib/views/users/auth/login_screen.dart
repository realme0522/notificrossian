import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:notificrossian/views/users/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: SizedBox(
                width: 130, // Adjust the width as needed
                height: 130, // Adjust the height as needed
                child: Image.asset(
                  'assets/icons/notificrossian-logo1.png', // Replace 'assets/logo.svg' with your SVG file path
                ),
              ),
            ),
            Text(
              'Login User Account',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              thickness: 5,
              indent: 90,
              endIndent: 90,
              color: Colors.red.shade900,
            ),

            Container(
              height: 70,
              width: 380,
              alignment: Alignment.center,
               margin: EdgeInsets.only(top: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextFormField(
                  decoration: InputDecoration(
                     suffixIcon: Icon(
                        Icons.email_outlined
                      ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    hintText: 'Email',
                    contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
                  ),
                ),
              ),
            ),

            Container(
              height: 70,
              width: 380,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextFormField(
                  decoration: InputDecoration(
                     suffixIcon: Icon(
                        Icons.lock_person_outlined
                      ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                    ),
                    hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 40,
              margin: EdgeInsets.only(top: 20.0),
              decoration: BoxDecoration(
                color: Colors.red.shade900,
                borderRadius: BorderRadius.circular(11.0),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(letterSpacing: 5, color: Colors.white),
                ),
              ),
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
