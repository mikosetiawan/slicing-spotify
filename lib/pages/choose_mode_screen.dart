import 'package:flutter/material.dart';
import 'package:spotify/pages/register_or_sign_screen.dart';
import 'package:spotify/themes.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // BACKGROUND
            Positioned.fill(
              child: Image.asset("assets/bg-screen-2.png", fit: BoxFit.cover),
            ),

            // LOGO
            Positioned(
              top: 50,
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 50.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Spacer tetap desain sama
                      SizedBox(height: size.height * 0.45),

                      const Text(
                        "Choose Mode",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 21),

                      // Row Mode (Dark / Light)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50.0,
                          vertical: 25.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Image.asset("assets/dark.png", width: 73),
                                const SizedBox(height: 8),
                                const Text(
                                  "Dark Mode",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("assets/light.png", width: 73),
                                const SizedBox(height: 8),
                                const Text(
                                  "Light Mode",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const RegisterOrSignScreen(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 25,
                          ),
                          decoration: BoxDecoration(
                            color: Themes.secondaryColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            "Continue",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
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
