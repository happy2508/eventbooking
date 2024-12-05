import 'package:booking_app/main.dart';
import 'package:booking_app/registrationScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // Hardcoded list of users with email and password
  final List<Map<String, String>> users = [
    {"email": "harsh@gmail.com", "password": "harsh123"},
    {"email": "atharva@gmail.com", "password": "atharva123"},
    {"email": "kunal@gmail.com", "password": "kunal123"},
    {"email": "happy@gmail.com", "password": "happy123"},
    {"email": "meenal@gmail.com", "password": "meenal123"},
    {"email": "kunjal@gmail.com", "password": "kunjal123"},
    {"email": "user7@example.com", "password": "password7"},
    {"email": "user8@example.com", "password": "password8"},
    {"email": "user9@example.com", "password": "password9"},
    {"email": "user10@example.com", "password": "password10"},
  ];

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    String enteredEmail = emailController.text.trim();
    String enteredPassword = passwordController.text;

    // Check if the entered credentials match any user
    bool isValidUser = users.any((user) =>
        user["email"] == enteredEmail && user["password"] == enteredPassword);

    if (isValidUser) {
      // Navigate to the main page (replace MainPage with your destination)
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainPage()));
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Wrong credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // App logo
                Icon(Icons.event, size: 100, color: Colors.white),
                SizedBox(height: 50),

                // Email TextField
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Password TextField
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?',
                      style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 20),

                // Login Button
                MaterialButton(
                  onPressed: () => login(context),
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                  child: Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),

                SizedBox(height: 20),

                // Sign-up option
                GestureDetector(
                  onTap: () {
                    // Navigate to registration screen
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                  },
                  child: Text('Don’t have an account? Sign up',
                      style: TextStyle(color: Colors.white)),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Dummy MainPage to navigate to after login
// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Main Page')),
//       body: Center(child: Text('Welcome to the Main Page!')),
//     );
//   }
// }

// // Dummy RegistrationScreen (placeholder)
// class RegistrationScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Registration')),
//       body: Center(child: Text('Registration Screen Placeholder')),
//     );
//   }
// }
