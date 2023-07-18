import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create User Account',
                style: TextStyle(fontSize: 20),
              ),
              CircleAvatar(
                radius: 65,
                backgroundColor: Colors.red.shade900,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Student ID',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red.shade900,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow()],
                ),
                child: Center(
                    child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                  ),
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    child: Text('Login'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
