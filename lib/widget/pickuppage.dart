import 'package:flutter/material.dart';
import 'package:ecocycle/widget/category_widget.dart';
import 'package:ecocycle/widget/location_appbar_widget.dart';

class PickupPage extends StatefulWidget {
  const PickupPage({super.key});

  @override
  _PickupPageState createState() => _PickupPageState();
}

class _PickupPageState extends State<PickupPage> {
  String _activeCategory = 'All';

  void _setActiveCategory(String category) {
    setState(() {
      _activeCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const LocationAppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/image/bg2.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).padding.top +
                      kToolbarHeight +
                      20), // Adjust top spacing as needed
              CategoryWidget(
                activeCategory: _activeCategory,
                onCategorySelected: _setActiveCategory,
              ),
              const SizedBox(height: 20), // Adjust spacing between components
              // Add other widgets or components as needed
            ],
          ),
        ],
      ),
    );
  }
}
