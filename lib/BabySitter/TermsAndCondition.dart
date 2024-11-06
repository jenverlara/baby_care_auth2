import 'package:flutter/material.dart';

void main() {
  runApp(const TermsAndConditions());
}

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Terms and Conditions"),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back, color: Colors.black), // Back arrow
            onPressed: () {
              // Navigate back to the Signup page
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              const SizedBox(height: 30),
              // Terms and Conditions Box
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Terms and Conditions",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                      "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi "
                      "ut aliquip ex ea commodo consequat."
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                      "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                      "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi "
                      "ut aliquip ex ea commodo consequat.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                          color: Color.fromRGBO(22, 134, 170, 1)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                    ),
                    onPressed: () {
                      // Handle decline action
                    },
                    child: const Text(
                      'DECLINE',
                      style: TextStyle(color: Color.fromRGBO(22, 134, 170, 1)),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(22, 134, 170, 1),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
                    ),
                    onPressed: () {
                      // Handle accept action
                    },
                    child: const Text(
                      'ACCEPT',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
