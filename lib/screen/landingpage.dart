import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image/bg2.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/logo.png',
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 15.0),
                      const Text(
                        'EcoCycle',
                        style: TextStyle(
                          fontSize: 28,
                          color: Color(0xFF437118),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  const Text(
                    'Recycle Today for a Better Tomorrow',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFAFD06E),
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(
                          color: Color(0xFF1D2A62),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Color(0xFF1D2A62),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
