import 'package:flutter/material.dart';
import 'package:spotify/pages/register_screen.dart';
import 'package:spotify/pages/signin_screen.dart';
import 'package:spotify/themes.dart';

class RegisterOrSignScreen extends StatelessWidget {
  const RegisterOrSignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.primaryColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/bg-screen-3.png", fit: BoxFit.cover),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 230),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/spotify.png", width: 196),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enjoy Listening To Music",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 21),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                        print("Register!");
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 25,
                        ),
                        decoration: BoxDecoration(
                          color: Themes.secondaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninScreen(),
                          ),
                        );
                        print("Sign in!");
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 25,
                        ),
                        decoration: BoxDecoration(
                          color: Themes.primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
