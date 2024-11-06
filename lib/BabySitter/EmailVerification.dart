import 'package:baby_care_auth2/BabySitter/Loginpage.dart';
import 'package:baby_care_auth2/BabySitter/RequirementsPage.dart';
import 'package:flutter/material.dart';

class Emailverification extends StatelessWidget {
  const Emailverification ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make the AppBar transparent
        elevation: 0, // Remove the shadow
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black), // Back arrow
          onPressed: () {
            // Navigate back to the Signup page
            Navigator.pop(context);
          },
        ),
      ),
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
              // "SIGN UP" Text
              const Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              // Email Input Field
              const InputField(
                hintText: 'Enter your Email Account',
                icon: Icons.email,
              ),
              const SizedBox(height: 15),
              // Verification Code Input Field
              const InputField(
                hintText: 'Enter Verification Code',
                icon: Icons.verified_user,
                obscureText: false,
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  // Navigate to EmailVerification
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RequirementsPage()),
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
                  'SIGN UP',
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
                  // Navigate to login page
                  // Replace with your actual login page widget
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

// Custom InputField Widget
class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const InputField({
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.lightBlue[100],
        prefixIcon: Icon(icon, color: Colors.black54),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black54),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
