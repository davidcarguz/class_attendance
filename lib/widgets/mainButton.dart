import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {

  final String label;
  final VoidCallback onPressed;

  const MainButton({
    super.key, required this.label, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1D4CC3),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
            horizontal: 0.0, vertical: 15.0),
        elevation: 15.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        label,
      ),
    );
  }
}