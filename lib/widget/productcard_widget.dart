import 'package:flutter/material.dart';
import 'package:ecocycle/data/productdata.dart';

class ProductCardWidget extends StatefulWidget {
  final Product product;

  const ProductCardWidget({required this.product, super.key});

  @override
  _ProductCardWidgetState createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  double weight = 0.0; // State untuk menyimpan berat produk
  bool _isWeightEntered = false; // State untuk menyimpan status input berat

  // Method untuk menampilkan dialog input berat
  Future<void> _showWeightInputDialog() async {
    double? newWeight = await showDialog<double>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Input Weight'),
          content: TextFormField(
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: const InputDecoration(labelText: 'Weight (kg)'),
            onChanged: (value) {
              weight = double.tryParse(value) ?? 0.0;
            },
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(weight);
              },
            ),
          ],
        );
      },
    );

    if (newWeight != null) {
      setState(() {
        weight = newWeight;
        _isWeightEntered = true; // Set the flag to true once weight is entered
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: Colors.grey, width: 1.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Image.asset(
              widget.product.imageUrl,
              width: 80,
              height: 80,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, size: 70);
              },
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.product.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF87AECE),
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.grey, width: 1.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.monetization_on,
                          size: 16,
                          color: Color(0xFF1D2A62),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '${widget.product.pointsPerKg} Points/kg',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1D2A62),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFAFD06E),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.grey, width: 1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.scale,
                              size: 16,
                              color: Color(0xFF1D2A62),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '${weight.toStringAsFixed(1)} kg',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1D2A62),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: _isWeightEntered
                            ? const Icon(Icons.check_circle,
                                size: 30, color: Color(0xFF1D2A62))
                            : const Icon(Icons.add_circle,
                                size: 30, color: Color(0xFF1D2A62)),
                        onPressed: _showWeightInputDialog,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
