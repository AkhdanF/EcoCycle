import 'package:flutter/material.dart';

class WeightInputDialog extends StatefulWidget {
  final Function(double weight) onWeightEntered;

  const WeightInputDialog({super.key, required this.onWeightEntered});

  @override
  _WeightInputDialogState createState() => _WeightInputDialogState();
}

class _WeightInputDialogState extends State<WeightInputDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Enter Weight (kg)'),
      content: TextField(
        controller: _controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        decoration: const InputDecoration(
          hintText: 'Enter weight in kilograms',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            double weight = double.tryParse(_controller.text) ?? 0.0;
            widget.onWeightEntered(weight);
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
