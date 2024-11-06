import 'package:baby_care_auth2/BabySitter/FrontPage.dart';
import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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

          // Welcome Text
          const Text(
            'Welcome to BabyCare',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),

          // Client Button
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
                onPressed: () {},
                child: const Text(
                  'CLIENT',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Baby Sitter Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                      0xFFC1E3FF), // Light blue color for sign-up button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Frontpage()),
                   );
                },
                child: const Text(
                  'BABY SITTER',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
