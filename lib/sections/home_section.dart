import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import '../widgets/neon_text.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      height: 650,
      padding: const EdgeInsets.all(40),
      child: SingleChildScrollView(
        scrollDirection: .horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Left side text
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NeonText("Hello, I'm"),
                const SizedBox(height: 10),
                const NeonText("Biroshan Mahato", fontSize: 60),
                const SizedBox(height: 20),
                // themeProvider.isDark ? Icons.wb_sunny : Icons.nightlight_round,
                // color: Theme.of(context).primaryColor,
                Text(
                  "Flutter Developer | Mobile App Engineer",
                  style: TextStyle(color: themeProvider.isDark ? Colors.white70 : Colors.black, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(width: 60),

            // Right Side Image
            Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.cyanAccent, width: 3),
                image: const DecorationImage(
                  image: AssetImage("assets/profile.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
