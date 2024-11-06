import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:baby_care_auth2/BabySitter/Loginpage.dart';
import 'package:baby_care_auth2/BabySitter/TermsAndCondition.dart';

class RequirementsPage extends StatefulWidget {
  const RequirementsPage ({super.key});
  @override
  _RequirementsPageState createState() => _RequirementsPageState();
}

class _RequirementsPageState extends State<RequirementsPage> {
  List<PlatformFile>? _pickedFiles;

  Future _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'pdf'],
    );

    if (result != null) {
      setState(() {
        _pickedFiles = result.files;
      });
    }
  }

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
             const Text(
                'UPLOAD',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            ElevatedButton(

              onPressed: _pickFiles,
              child: const Text('Drag & drop files or Browse',
              style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,),
              ),      
            ),
            
           const SizedBox(height: 15),
            // File List
            if (_pickedFiles != null)
              ListView.builder(
                shrinkWrap: true,
                itemCount: _pickedFiles!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_pickedFiles![index].name),
                    subtitle: Text(_pickedFiles![index].extension!),
                  );
                },
              ),
             const SizedBox(height: 15),
            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TermsAndConditions()),
                 );
                // Handle sign-up logic here
              },
               style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC1C1),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              child: const Text(
                'SIGN UP'
                  ,style: TextStyle(
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