import 'package:baby_care_auth2/BabySitter/FrontPage.dart';
import 'package:baby_care_auth2/BabySitter/Loginpage.dart';
import 'package:baby_care_auth2/BabySitter/EmailVerification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Signup());
}

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent background
        elevation: 0, // Remove AppBar shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Navigate back to Frontpage when arrow is pressed
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const Frontpage()), // Direct to Frontpage
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image with Border Radius
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/BabyCareLogo.jpg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              // "SIGN UP" Title
              const Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 25),
              // Username Input Field
              const InputField(
                hintText: 'Your Username',
                icon: Icons.person,
              ),
              const SizedBox(height: 15),
              // Password Input Field
              const InputField(
                hintText: 'Your Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 15),
              // Confirm Password Input Field
              const InputField(
                hintText: 'Confirm Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 25),
              // Continue Button
              ElevatedButton(
                onPressed: () {
                  // Navigate to Signup2
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Emailverification()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC1C1),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  'CONTINUE',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // "Already have an account? Sign In"
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Loginpage()),
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    text: 'Already have an Account? ',
                    style: TextStyle(color: Colors.black54),
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
