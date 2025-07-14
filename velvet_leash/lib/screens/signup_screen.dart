import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _zipCodeController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _referralController = TextEditingController();

  bool _isLoading = false;

  void _signupWithEmail() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);
      try {
        final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Success → Go to Login screen
        if (credential.user != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Signup successful! Please log in.")),
            
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => LoginScreen()),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Signup failed: ${e.toString()}")),
        );
      } finally {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 80,
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Social Buttons (UI Only)
              _buildSocialButton(
                icon: Icons.apple,
                text: "Sign Up with Apple",
                color: Color(0xFF8B8B8B),
                textColor: Colors.white,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Apple Sign Up is not implemented.")),
                  );
                },
              ),
              SizedBox(height: 12),
              _buildSocialButton(
                icon: Icons.facebook,
                text: "Sign Up with Facebook",
                color: Color(0xFFF6EDCA),
                textColor: Colors.black,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Facebook Sign Up is not implemented.")),
                  );
                },
              ),
              SizedBox(height: 12),
              _buildSocialButton(
                icon: Icons.mail,
                text: "Sign Up with Email",
                color: Color(0xFF8F9E73),
                textColor: Colors.white,
                onTap: _signupWithEmail,
              ),

              SizedBox(height: 24),
              Text("or sign up with email",
                  style: TextStyle(color: Colors.grey[600])),

              SizedBox(height: 24),

              // Form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    _buildInput("First Name", controller: _firstNameController),
                    SizedBox(height: 16),
                    _buildInput("Last Name", controller: _lastNameController),
                    SizedBox(height: 16),
                    _buildInput("Zip Code", controller: _zipCodeController),
                    SizedBox(height: 16),
                    _buildInput("Email", controller: _emailController),
                    SizedBox(height: 16),
                    _buildInput("Password", controller: _passwordController, obscure: true),
                    SizedBox(height: 16),
                    _buildInput("How did you hear about us?", controller: _referralController),
                  ],
                ),
              ),

              SizedBox(height: 24),
              _isLoading
                  ? CircularProgressIndicator(color: Color(0xFF8F9E73))
                  : ElevatedButton(
                      onPressed: _signupWithEmail,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF8F9E73),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text("Save", style: TextStyle(fontSize: 16, color: Colors.white)),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInput(String label,
      {bool obscure = false, TextEditingController? controller}) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      validator: (value) =>
          (value == null || value.isEmpty) ? 'Required field' : null,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 20),
        label: Text(text, style: TextStyle(fontSize: 15)),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
