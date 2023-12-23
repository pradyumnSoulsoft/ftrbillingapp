import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'api_service.dart';


void main() {
  runApp(const BillingApp());
}

class BillingApp extends StatelessWidget {
  const BillingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue[200],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Billing Login Page'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () async {

                // APIService.getUsers();
                // Handle login logic here
                String uname = _usernameController.text;
                String password = _passwordController.text;
                APIService.login(uname, password);
                // Perform authentication, validate credentials, etc.
                // if (username == 'Pradyumn' && password == '12345') {
                //   // Navigate to the home page or perform desired action on successful login
                //   Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(builder: (context) => HomeScreen()),
                //   );
                // } else {
                //   // Show an error message or handle failed login
                //   showDialog(
                //     context: context,
                //     builder: (context) => AlertDialog(
                //       title: Text('Login Failed'),
                //       content: Text('Invalid username or password.'),
                //       actions: [
                //         TextButton(
                //           onPressed: () {
                //             Navigator.pop(context);
                //           },
                //           child: Text('OK'),
                //         ),
                //       ],
                //     ),
                //   );
                // }
              },
              style: ElevatedButton.styleFrom(
                // primary: Colors.blue, // Background color
                // onPrimary: Colors.white, // Text color
                padding: EdgeInsets.all(16.0), // Padding around the button content
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Button border radius
                ),
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

