import 'package:flutter/material.dart';
import 'package:ecocycle/widget/categorybody_widget.dart';
import 'package:ecocycle/screen/confirmpage.dart';

class CategoryWidget extends StatelessWidget {
  final String activeCategory;
  final ValueChanged<String> onCategorySelected;

  const CategoryWidget({
    required this.activeCategory,
    required this.onCategorySelected,
    super.key,
  });

  void _setActiveCategory(String category) {
    onCategorySelected(category);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.all(5.0),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryButton(
                  category: 'All',
                  isActive: activeCategory == 'All',
                  onPressed: _setActiveCategory,
                ),
                const SizedBox(width: 10),
                CategoryButton(
                  category: 'Plastic',
                  isActive: activeCategory == 'Plastic',
                  onPressed: _setActiveCategory,
                ),
                const SizedBox(width: 10),
                CategoryButton(
                  category: 'Glass',
                  isActive: activeCategory == 'Glass',
                  onPressed: _setActiveCategory,
                ),
                const SizedBox(width: 10),
                CategoryButton(
                  category: 'Metal',
                  isActive: activeCategory == 'Metal',
                  onPressed: _setActiveCategory,
                ),
                const SizedBox(width: 10),
                CategoryButton(
                  category: 'Paper',
                  isActive: activeCategory == 'Paper',
                  onPressed: _setActiveCategory,
                ),
                const SizedBox(width: 10),
                CategoryButton(
                  category: 'E-waste',
                  isActive: activeCategory == 'E-waste',
                  onPressed: _setActiveCategory,
                ),
                const SizedBox(width: 10),
                CategoryButton(
                  category: 'Other',
                  isActive: activeCategory == 'Other',
                  onPressed: _setActiveCategory,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          CategorybodyWidget(activeCategory: activeCategory),
          const SizedBox(height: 5),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAFD06E),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
              onPressed: () {
                Navigator.pushNamed(context, '/confirmpage');
              },
              child: const Text(
                'Confirm Pickup',
                style: TextStyle(
                    color: Color(0xFF1D2A62),
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  final bool isActive;
  final ValueChanged<String> onPressed;

  const CategoryButton({
    required this.category,
    required this.isActive,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed(category); // Pass the category to the onPressed callback
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: [
            Text(
              category,
              style: const TextStyle(
                color: Color(0xFF1D2A62),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (isActive)
              Container(
                margin: const EdgeInsets.only(top: 4.0),
                height: 3.0,
                width: 50.0,
                color: Colors.red,
              ),
          ],
        ),
      ),
    );
  }
}
