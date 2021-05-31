import 'Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(49, 39, 79, 1),
        title: Center(child: Text('Login Page')),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 40,
            ),
            FadeAnimation(
                2.9,
                Container(
                  width: 200,
                  child: Text(
                    'Hello, Welcome Back',
                    style: TextStyle(
                        color: Color.fromRGBO(49, 39, 79, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(196, 135, 198, .3),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      )
                    ]),
                width: 300,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(50),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'User Name',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(196, 135, 198, .3),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      )
                    ]),
                width: 300,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(50),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                  obscureText: true,
                ),
              ),
            ),
            Container(
              child: Text('Forget Password?'),
            ),
            SizedBox(height: 30),
            FadeAnimation(
                1.9,
                Container(
                  width: 300,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromRGBO(49, 39, 79, 1),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
