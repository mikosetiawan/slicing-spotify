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
    return Scaffold(
      backgroundColor: Themes.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Themes.primaryColor,
        leading: Image.asset("assets/arrow-back.png", width: 32),
        title: Image.asset("assets/spotify.png", width: 108),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 22),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
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
              SizedBox(height: 38),
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // warna border
                    width: 1, // 1px
                  ),
                  borderRadius: BorderRadius.circular(25), // optional
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    border: InputBorder.none, // hilangkan border bawaan
                    hintText: "Enter something...",
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // warna border
                    width: 1, // 1px
                  ),
                  borderRadius: BorderRadius.circular(25), // optional
                ),
                child: TextField(
                  obscureText: _obscureTextPass,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    border: InputBorder.none, // hilangkan border bawaan
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
    );
  }
}
