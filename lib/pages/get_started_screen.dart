import 'package:flutter/material.dart';
import 'package:spotify/pages/choose_mode_screen.dart';
import 'package:spotify/themes.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // BACKGROUND
            Positioned.fill(
              child: Image.asset("assets/bg-screen-1.png", fit: BoxFit.cover),
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
                      // Spacer visual (tetap sama secara desain)
                      SizedBox(height: size.height * 0.45),

                      const Text(
                        "Enjoy Listing To Music",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 21),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(height: 30),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChooseModeScreen(),
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
                            "Get Started",
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
