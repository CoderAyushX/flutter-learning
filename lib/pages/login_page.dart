import 'package:firstapp/utils/route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/undraw_Mobile_login_re_9ntv.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 14.0, horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        TextButton.styleFrom(minimumSize: const Size(120, 40)),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.homeRoute);
                    },
                    style:
                        TextButton.styleFrom(minimumSize: const Size(120, 40)),
                    child: const Text(
                      'Skip',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
