import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import '../widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider =  Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          const SectionTitle("About Me"),
          Text(
            "I am a Flutter Developer with experience building mobile apps "
                "for enterprises, startups, and personal projects. "
                "Passionate about beautiful UI, clean architecture (BLoC, Provider), "
                "and performance optimization.",
            textAlign: TextAlign.center,
            style: TextStyle(color: themeProvider.isDark ? Colors.white70 : Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
