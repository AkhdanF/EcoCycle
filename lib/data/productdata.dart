class Product {
  final String imageUrl;
  final String name;
  final String description;
  final String category;
  final double pointsPerKg;
  bool isChecked; // Make isSelected mutable

  Product({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.category,
    required this.pointsPerKg,
    this.isChecked = false, // Initialize isSelected
  });

  set toggleChecked(bool value) {
    isChecked = !isChecked;
  }
}

final List<Product> products = [
  Product(
    imageUrl: 'assets/image/plastic.png',
    name: 'Plastic Bottle',
    description: 'A recyclable plastic bottle.',
    category: 'Plastic',
    pointsPerKg: 10000,
  ),
  Product(
    imageUrl: 'assets/image/glassjar.png',
    name: 'Glass Jar',
    description: 'A recyclable glass jar.',
    category: 'Glass',
    pointsPerKg: 8000,
  ),
  Product(
    imageUrl: 'assets/image/metalcan.png',
    name: 'Metal Can',
    description: 'A recyclable metal can.',
    category: 'Metal',
    pointsPerKg: 12000,
  ),
  Product(
    imageUrl: 'assets/image/paku.png',
    name: 'Nails',
    description: 'Recyclable nails.',
    category: 'Metal',
    pointsPerKg: 10000,
  ),
  Product(
    imageUrl: 'assets/image/books.png',
    name: 'Book',
    description: 'A recyclable book.',
    category: 'Paper',
    pointsPerKg: 5000,
  ),
  Product(
    imageUrl: 'assets/image/paperbox.png',
    name: 'Paper Box',
    description: 'A recyclable paper box.',
    category: 'Paper',
    pointsPerKg: 4000,
  ),
  Product(
    imageUrl: 'assets/image/hprusak.png',
    name: 'Old Phone',
    description: 'An old phone suitable for e-waste recycling.',
    category: 'E-waste',
    pointsPerKg: 20000,
  ),
  Product(
    imageUrl: 'assets/image/banbekas.png',
    name: 'Used Tyre',
    description: 'A used tyre that can be recycled.',
    category: 'Other',
    pointsPerKg: 6000,
  ),
  Product(
    imageUrl: 'assets/image/ac.png',
    name: 'Air Conditioner',
    description: 'A recyclable air conditioner.',
    category: 'E-waste',
    pointsPerKg: 25000,
  ),
  Product(
    imageUrl: 'assets/image/kulkas.png',
    name: 'Kulkas',
    description: 'A recyclable refrigerator.',
    category: 'E-waste',
    pointsPerKg: 30000,
  ),
  Product(
    imageUrl: 'assets/image/mesincuci.png',
    name: 'Mesin Cuci',
    description: 'A recyclable washing machine.',
    category: 'E-waste',
    pointsPerKg: 22000,
  ),
  Product(
    imageUrl: 'assets/image/minyakjelantah.png',
    name: 'Minyak Jelantah',
    description: 'Recyclable used cooking oil.',
    category: 'Other',
    pointsPerKg: 15000,
  ),
  Product(
    imageUrl: 'assets/image/mirror.png',
    name: 'Mirror',
    description: 'A recyclable mirror.',
    category: 'Glass',
    pointsPerKg: 7000,
  ),
];
