import 'package:flutter/material.dart';
import '../widgets/section_title.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const SectionTitle("Projects"),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: [
              _projectCard("Cycle Rental App", "A smart bike rental system."),
              _projectCard("ERP Mobile App", "Inventory + billing mobile app."),
              _projectCard("Emotion Detector", "ML + Flutter project."),
            ],
          ),
        ],
      ),
    );
  }

  Widget _projectCard(String title, String desc) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.cyanAccent),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Text(desc, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
