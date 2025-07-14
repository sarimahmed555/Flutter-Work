import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Logo Row
     Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Image.asset(
      'assets/logo.png',
      height: 100, // ✅ Adjust as per your logo size
    ),
    TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => LoginScreen()),
        );
      },
      child: Text(
        "Sign in",
        style: TextStyle(color: Color(0xFF8F9E73 )),
      ),
    )
  ],
),


              SizedBox(height: 20),

              // Headline
              Center(
                child: Text(
                  "Trusted pet care\nright around the corner",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(height: 20),

              // 🐶🐱 Pet Collage (Dog1, Cat1, Dog2)
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/dog1.png"),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/cat1.png"),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/dog2.png"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // 🏠 House Vector Image
              Center(
                child: Image.asset(
                  "assets/resources1.png", // ✅ Your house+vector image
                  height: 450,
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: 30),

              // Buttons
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xFF8F9E73),

                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Find Pet care",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ),
              SizedBox(height: 15),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SignupScreen()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Color(0xFF8F9E73),
                  side: BorderSide(color: Colors.green),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text("Create account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
