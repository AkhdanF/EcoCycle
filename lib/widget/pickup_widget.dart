import 'package:flutter/material.dart';

class PickupWidget extends StatelessWidget {
  const PickupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '12.5 KG Saved!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1D2A62),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Ayo Jadikan Dunia \nTempat Yang Lebih Baik',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF1D2A62),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/image/logo.png',
                width: 65,
                height: 65,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF87AECE),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              shadowColor: Colors.black.withOpacity(0.5),
              elevation: 5,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/pickup');

            },
            child: const Text(
              'Pick Up Recycle',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1D2A62),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
