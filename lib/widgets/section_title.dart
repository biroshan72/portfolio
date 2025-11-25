import 'package:flutter/material.dart';
import '../widgets/neon_text.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: NeonText(title, fontSize: 40),
    );
  }
}
