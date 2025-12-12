import 'package:flutter/material.dart';
import 'package:spotify/pages/register_or_sign_screen.dart';
import 'package:spotify/themes.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Set responsive H/W
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/bg-screen-2.png", fit: BoxFit.cover),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/spotify.png", width: 196),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: screenHeight * 0.45),
                Text(
                  "Choose Mode",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 21),
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
                          Text(
                            "Dark Mode",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/light.png", width: 73),
                          Text(
                            "Light Mode",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterOrSignScreen(),
                      ),
                    );
                    print("Continue!");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                    decoration: BoxDecoration(
                      color: Themes.secondaryColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Continue",
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
          ),
        ],
      ),
    );
  }
}
