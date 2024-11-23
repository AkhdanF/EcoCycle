// appbar_widget.dart
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key}) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          const SizedBox(width: 15.0),
          Image.asset(
            'assets/image/logo.png',
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 15.0),
          const Text(
            'EcoCycle',
            style: TextStyle(
              fontSize: 22,
              color: Color(0xFF437118),
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.notifications_active,
              color: Color(0xFF437118),
              size: 30,
            ),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Color(0xFF437118),
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Color(0xFF1D2A62),
              size: 30,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');

            },
          ),
        ],
      ),
    );
  }
}
