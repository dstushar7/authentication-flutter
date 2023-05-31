import 'package:flutter/material.dart';
import 'package:my_app/services/auth.dart';

class SignInScreen extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Sign In with Google'),
          onPressed: () async {
            try {
              await _auth.signInWithGoogle();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Sign In Successful')),
              );
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Sign In Failed')),
              );
            }
          },
        ),
      ),
    );
  }
}
