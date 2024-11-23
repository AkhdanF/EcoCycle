import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LocationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(
              Icons.location_on,
              color: Colors.red,
              size: 32,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Location',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1D2A62),
                ),
              ),
              Text(
                'Home',
                style: TextStyle(
                  color: Color(0xFF1D2A62),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Color(0xFF1D2A62),
            size: 30,
          ),
          SizedBox(width: 10),
          Spacer(),
          Icon(
            CupertinoIcons.map,
            color: Color(0xFF1D2A62),
            size: 30,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
