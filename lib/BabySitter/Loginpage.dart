import 'package:baby_care_auth2/BabySitter/FrontPage.dart';
import 'package:flutter/material.dart';
import 'package:baby_care_auth2/BabySitter/Signup.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Frontpage()),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            // Image with Border Radius
            ClipRRect(
              borderRadius: BorderRadius.circular(25), // Rounded corners
              child: Image.asset(
                'assets/BabyCareLogo.jpg',
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            // Login Text
            const Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            // Email Text Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'Your email',
                  filled: true,
                  fillColor: const Color(0xFFC1E3FF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Password Text Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Your Password',
                  filled: true,
                  fillColor: const Color(0xFFC1E3FF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFFFFC1C1), // Pink color for login button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  onPressed: () {
                    // Add login button functionality here
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Sign Up Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Do you have an Account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // OR Text and Social Media Icons
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Social Media Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Google Icon
                IconButton(
                  icon: const Icon(Icons.g_mobiledata),
                  iconSize: 40,
                  onPressed: () {
                    // Google authentication functionality
                  },
                ),
                const SizedBox(width: 20),

                // Facebook Icon
                IconButton(
                  icon: const Icon(Icons.facebook),
                  iconSize: 40,
                  onPressed: () {
                    // Facebook authentication functionality
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
