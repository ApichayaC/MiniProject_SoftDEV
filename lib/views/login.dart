import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sdm_project/components/background.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2661FA),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.03),
//login
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: "E-mail"),
              ),
            ),

            SizedBox(height: size.height * 0.03),
//Password
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(labelText: "Passwords"),
                obscureText: true,
              ),
            ),

            SizedBox(height: size.height * 0.05),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: RaisedButton(
                onPressed: () async {
                  var signInWithEmailAndPassword =
                      auth.signInWithEmailAndPassword(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  );
                  final result = await signInWithEmailAndPassword;
                  print(result.user.email);
                  print(result.user.uid);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(colors: [
                        Color.fromARGB(255, 255, 136, 34),
                        Color.fromARGB(255, 255, 177, 41)
                      ])),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            // TextField(
            //   controller: emailController,
            //   decoration: InputDecoration(
            //     border:
            //         OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            //     hintText: 'E-mail',
            //   ),
            // ),
            // TextField(
            //   obscureText: true,
            //   controller: passwordController,
            //   decoration: InputDecoration(
            //     border:
            //         OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            //     hintText: 'Password',
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () async {
            //     var signInWithEmailAndPassword =
            //         auth.signInWithEmailAndPassword(
            //       email: emailController.text.trim(),
            //       password: passwordController.text.trim(),
            //     );
            //     final result = await signInWithEmailAndPassword;
            //     print(result.user.email);
            //     print(result.user.uid);
            //   },
            //   child: Text('Login'),
          ],
        ),
      ),
    );
  }
}
