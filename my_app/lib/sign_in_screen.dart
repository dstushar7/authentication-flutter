import 'package:flutter/material.dart';
import 'package:my_app/services/auth.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Sign in with Google'),
          onPressed: () async {
            String? userUID = await _auth.signInWithGoogle();
            if (userUID == null) {
              print('Sign in failed');
            } else {
              print('Signed in as: $userUID');
            }
          },
        ),
      ),
    );
  }
}
