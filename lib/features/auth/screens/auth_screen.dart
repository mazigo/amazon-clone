import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';

  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              ListTile(
                title: const Text(
                  'Create account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    activeColor: Constants.secondaryColor,
                    value: Auth.signup,
                    groupValue: _auth,
                    onChanged: (Auth? val) {
                      setState(() {
                        _auth = val!;
                      });
                    }),
              ),
              ListTile(
                title: const Text(
                  'Sign-in',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                    activeColor: Constants.secondaryColor,
                    value: Auth.signin,
                    groupValue: _auth,
                    onChanged: (Auth? val) {
                      setState(() {
                        _auth = val!;
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
