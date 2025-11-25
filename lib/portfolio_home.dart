import 'package:flutter/material.dart';
import 'navbar.dart';
import 'sections/home_section.dart';
import 'sections/about_section.dart';
import 'sections/skills_section.dart';
import 'sections/projects_section.dart';
import 'sections/contact_section.dart';

class PortfolioHome extends StatefulWidget {
  const PortfolioHome({super.key});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  final ScrollController _scrollController = ScrollController();

  // Keys to scroll to different sections
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(
            onNavTap: (index) {
              switch (index) {
                case 0:
                  scrollToSection(homeKey);
                  break;
                case 1:
                  scrollToSection(aboutKey);
                  break;
                case 2:
                  scrollToSection(skillsKey);
                  break;
                case 3:
                  scrollToSection(projectsKey);
                  break;
                case 4:
                  scrollToSection(contactKey);
                  break;
              }
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  Container(key: homeKey, child: const HomeSection()),
                  Container(key: aboutKey, child: const AboutSection()),
                  Container(key: skillsKey, child: const SkillsSection()),
                  Container(key: projectsKey, child: const ProjectsSection()),
                  Container(key: contactKey, child: const ContactSection()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
