import 'package:flutter/material.dart';
import 'package:spotify/themes.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool _obscureTextPass = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true, // penting saat keyboard muncul
      backgroundColor: Themes.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Themes.primaryColor,
        leading: Image.asset("assets/arrow-back.png", width: 32),
        title: Image.asset("assets/spotify.png", width: 108),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  size.height -
                  MediaQuery.of(context).padding.top -
                  kToolbarHeight,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 22),
                    Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                            text: "If You Need Any Support",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: " Click Here",
                            style: TextStyle(color: Themes.secondaryColor),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 38),

                    // EMAIL
                    Container(
                      height: 80,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const TextField(
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter something...",
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // PASSWORD
                    Container(
                      height: 80,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        obscureText: _obscureTextPass,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureTextPass = !_obscureTextPass;
                              });
                            },
                            icon: Icon(
                              _obscureTextPass
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
