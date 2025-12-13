import 'package:flutter/material.dart';
import 'package:spotify/pages/register_screen.dart';
import 'package:spotify/pages/signin_screen.dart';
import 'package:spotify/themes.dart';

class RegisterOrSignScreen extends StatelessWidget {
  const RegisterOrSignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Themes.primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            // BACKGROUND
            Positioned.fill(
              child: Image.asset("assets/bg-screen-3.png", fit: BoxFit.cover),
            ),

            // LOGO AT TOP
            Positioned(
              top: 230,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset("assets/spotify.png", width: 196),
              ),
            ),

            // CONTENT
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: size.height),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Enjoy Listening To Music",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 21),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // BUTTON ROW
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 30,
                                ),
                                decoration: BoxDecoration(
                                  color: Themes.secondaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "Register",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SigninScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 30,
                                ),
                                decoration: BoxDecoration(
                                  color: Themes.primaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "Sign in",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
