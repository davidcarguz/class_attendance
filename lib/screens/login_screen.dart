import 'package:class_attendance/screens/courses_screen.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../components/mainButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 50.0, bottom: 30.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Welcome to ',
                        style: headerTitleStyle,
                        children: [
                          TextSpan(
                            text: 'AssisCheck',
                            style: headerTitleNameStyle,
                          ),
                        ]),
                  ),
                  const Text(
                    'Taking assistance has neven been easier',
                    style: subtitleTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
                    child: Text(
                      'Login',
                      style: formHeaderTitleStyle,
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      enabledBorder: inputFieldLoginStyle,
                      border: inputFieldFocusLoginStyle,
                      filled: true,
                      fillColor: Color(0x228A8A8A),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder: inputFieldLoginStyle,
                      border: inputFieldFocusLoginStyle,
                      filled: true,
                      fillColor: Color(0x228A8A8A),
                    ),
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 0.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {}, child: const Text('Forgot Password')),
                    ),
                  ),
                  MainButton(label: 'SUBMIT', onPressed: (){
                    Navigator.pushNamed(context, CoursesScreen.route);
                  }),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Don\'t have an account? Sign up here.',
                    style: footerTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
