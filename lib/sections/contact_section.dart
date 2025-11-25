import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});
  // Launch URLs
  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: isDark ? Colors.black : Colors.grey.shade200,
      child: Column(
        children: [
          // Social Icons Row
          Wrap(
            spacing: 20,
            children: [
              _socialIcon(FontAwesomeIcons.github, "https://github.com/biroshan72", context),
              _socialIcon(FontAwesomeIcons.linkedin, "https://www.linkedin.com/in/biroshan-kumar-mahato-b16b97215/", context),
              _socialIcon(FontAwesomeIcons.facebook, "https://www.facebook.com/b.biroshan.singh/", context),
              _socialIcon(FontAwesomeIcons.instagram, "https://www.instagram.com/__init__biroshansingh__/", context),
              _socialIcon(Icons.email, "biroshan.dev@gmail.com", context),
            ],
          ),

          const SizedBox(height: 30),

          Text(
            "© ${DateTime.now().year} Biroshan Kumar Mahato. All rights reserved.",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialIcon(IconData icon, String url, BuildContext context) {
    return InkWell(
      onTap: () => _launch(url),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Icon(
          icon,
          size: 26,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}
