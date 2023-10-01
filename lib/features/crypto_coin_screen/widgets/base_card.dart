import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color.fromARGB(255, 21, 21, 21),
      ),
      child: child,
    );
  }
}
