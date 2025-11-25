import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const SectionTitle("Skills"),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: _skillBoxList(),
          ),
        ],
      ),
    );
  }

  List<Widget> _skillBoxList() {
    final skills = [
      "Flutter", "Dart", "Firebase",
      "REST API", "BLoC", "Provider",
      "Git", "Clean Architecture", "UI/UX",
    ];

    return skills
        .map((e) => Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyanAccent),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(e, style: const TextStyle(fontSize: 18)),
    ))
        .toList();
  }
}
