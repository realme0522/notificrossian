import 'package:flutter/material.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final List<String> genderItems = ['BSIT', 'BSBA'];
  String? selectedValue;

  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                'Create An Account',
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
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.person_2_outlined,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                      hintText: 'Full Name',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
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
                        Icons.numbers_outlined,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                      hintText: 'Student ID',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
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
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                        suffixIcon: Icon(
                        Icons.school_outlined
                      ),
                      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                    ),
                    hint: const Text(
                      'Choose Course',
                      textAlign: TextAlign.start,
                    ),
                    items: genderItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please Select Course.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    onSaved: (value) {
                      selectedValue = value;
                    },
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
                        Icons.numbers_outlined,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                      hintText: 'Year Level',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
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
                        Icons.email_outlined
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                      hintText: 'Hcdc Email',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
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
                        Icons.phone_android_outlined
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11.0),
                      ),
                      hintText: 'Phone Number',
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
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
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 10.0, 20.0, 10.0),
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
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow()],
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      // fontSize: 20,
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ),
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
