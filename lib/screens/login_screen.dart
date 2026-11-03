import 'package:flutter/material.dart';
import 'package:untitled/screens/signup.dart';
import 'signup.dart';
import 'forgot_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.all(3),
          ),
          title: Text('CSC315', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.deepPurpleAccent,
        ),

        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(decoration: InputDecoration(hintText: 'Email')),
              SizedBox(height: 25),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(hintText: 'Password'),
              ),
              SizedBox(height: 25),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ForgotPasswordPage(),
                    ),
                  );
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),

              SizedBox(height: 25),
              //Text('COUNTING>>> $_counter'),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counter = _counter + 1;
                  });
                  debugPrint('COUNTING>>> $_counter');
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.deepPurpleAccent),
                ),
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => EmailVerificationPage(),
                    ),
                  );
                },
                child: Text('Register', style: TextStyle(fontSize: 18)),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
