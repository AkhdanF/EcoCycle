import 'package:flutter/material.dart';
import 'package:ecocycle/data/profiledata.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreeTerms = false;

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with signup logic here
      String username = _usernameController.text;
      String email = _emailController.text;
      String alamat = _alamatController.text;
      String password = _passwordController.text;

      // Check if username is already taken
      if (ProfileData.isUsernameTaken(username)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Username already taken.'),
            duration: Duration(seconds: 3),
          ),
        );
      } else {
        // Add new user to ProfileData
        ProfileData.addUser(
          User(username: username, email: email, alamat: alamat, password: password),
        );

        // Navigate to SignInPage after successful signup
        Navigator.pushNamed(context, '/signin');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/image/bg2.png',
            fit: BoxFit.cover,
          ),
          // Form container
          Container(
            margin: const EdgeInsets.only(top: 200),
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Header Row
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          'Join Us Now!',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xFF1D2A62),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    // Form Fields
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        prefixIcon: const Icon(Icons.person_outline, color: Colors.grey),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        // Add email validation logic here if needed
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _alamatController,
                      decoration: InputDecoration(
                        labelText: 'Alamat',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        prefixIcon: const Icon(Icons.location_on_outlined, color: Colors.grey),
                      ),
                      maxLines: 2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        // Add password validation logic here if needed
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    // Checkbox "Agree to our terms and conditions"
                    CheckboxListTile(
                      title: const Text(
                        'Agree to our terms and conditions',
                        style: TextStyle(
                          color: Color(0xFF1D2A62),
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _agreeTerms,
                      onChanged: (value) {
                        setState(() {
                          _agreeTerms = value!;
                        });
                      },
                      checkColor: Colors.green,
                      activeColor: Colors.white,
                    ),
                    const SizedBox(height: 20),
                    // Sign Up Button
                    ElevatedButton(
                      onPressed: _signUp,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFAFD06E),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Color(0xFF1D2A62),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // "Already have an account? Sign in" link
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account? ',
                            style: TextStyle(
                              color: Color(0xFF1D2A62),
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/signin');
                            },
                            child: const Text(
                              'SIGN IN',
                              style: TextStyle(
                                color: Color(0xFF1D2A62),
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Back Button and Logo
          Positioned(
            top: 50,
            left: 15,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF437118), size: 25),
                  onPressed: () {
                    Navigator.pushNamed(context, '/landing');
                  },
                ),
                Image.asset(
                  'assets/image/logo.png',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 15.0),
                const Text(
                  'EcoCycle',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFF437118),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            right: 15,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Color(0xFF1D2A62),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
