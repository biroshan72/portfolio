import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class NavBar extends StatelessWidget {
  final Function(int index) onNavTap;

  const NavBar({super.key, required this.onNavTap});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.95),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left: Logo / Name
          Text(
            "Biroshan",
            style: GoogleFonts.orbitron(
              fontSize: 26,
              color: Theme.of(context).primaryColor,
              shadows: [
                Shadow(
                  blurRadius: 10,
                  color: Theme.of(context).primaryColor.withOpacity(0.7),
                )
              ],
            ),
          ),

          // Right: Menu + Theme Toggle
          Row(
            children: [
              _navItem("Home", 0, context),
              _navItem("About", 1, context),
              _navItem("Skills", 2, context),
              _navItem("Projects", 3, context),
              _navItem("Contact", 4, context),

              const SizedBox(width: 20),

              // 🌞🌙 Theme Toggle Button
              IconButton(
                icon: Icon(
                  themeProvider.isDark ? Icons.wb_sunny : Icons.nightlight_round,
                  color: Theme.of(context).primaryColor,
                  size: 26,
                ),
                onPressed: () => themeProvider.toggleTheme(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _navItem(String label, int index, BuildContext context) {
    return GestureDetector(
      onTap: () => onNavTap(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          label,
          style: GoogleFonts.orbitron(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
            shadows: [
              Shadow(
                blurRadius: 12,
                color: Theme.of(context).primaryColor.withOpacity(0.7),
              )
            ],
          ),
        ),
      ),
    );
  }
}
