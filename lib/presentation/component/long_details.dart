import 'package:flutter/material.dart';

class LongDetailsSection extends StatelessWidget {
  const LongDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 40, top: 20, left: 20,),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF0D0D0D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Long intro text
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                height: 1.6,
              ),
              children: [
                const TextSpan(text: 'A '),
                _linkText('Mobile Application Developer'),
                const TextSpan(
                    text:
                    ' who creates seamless, scalable, and visually stunning mobile applications.\nWith proven experience in '),
                _techBox('Design Patterns'),
                const TextSpan(text: ', '),
                _techBox('MVVM'),
                const TextSpan(text: ', '),
                _techBox('OOP'),
                const TextSpan(text: ', '),
                _techBox('DI'),
                const TextSpan(text: ' and '),
                _linkText('more'),
                const TextSpan(
                    text:
                    ', with a strong eye for clean architecture and user-focused design. Quick learner, team player, and always ready to take on new challenges to build smart, scalable solutions.\n\nI believe that life is a mystery to solve, not a problem to resolve.'),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // Skills, Hobbies, Goal Cards
          /*const Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              _InfoCard(
                icon: Icons.code_outlined,
                iconColor: Colors.purpleAccent,
                title: 'Skills',
                description:
                'Building mobile apps with Android(Java/Kotlin), and Flutter.',
              ),
              _InfoCard(
                icon: Icons.sports_esports,
                iconColor: Colors.greenAccent,
                title: 'Hobbies',
                description: 'Solo Traveling or scoring goals in E-Football. ⚽🎮',
              ),
              _InfoCard(
                icon: Icons.rocket_launch,
                iconColor: Colors.blueAccent,
                title: 'Goal',
                description:
                'Let\'s team up and create something amazing together. 🚀',
              ),
            ],
          ),
          const SizedBox(height: 20),*/

          // Batman quote
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text.rich(
              TextSpan(
                style: TextStyle(color: Colors.white70, fontStyle: FontStyle.italic),
                children: [
                  TextSpan(text: 'P.S. I\'m not really '),
                  WidgetSpan(
                    child: _TagBox(text: 'Batman', color: Colors.orange),
                  ),
                  TextSpan(text: ', but I might be the '),
                  WidgetSpan(
                    child: _TagBox(text: 'hero', color: Colors.deepOrange),
                  ),
                  TextSpan(text: ' your project needs! 🙋‍♂️'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static WidgetSpan _techBox(String text) {
    return WidgetSpan(
      alignment: PlaceholderAlignment.middle,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: Colors.greenAccent.withOpacity(0.15),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  static TextSpan _linkText(String text) {
    return TextSpan(
      text: text,
      style: const TextStyle(
        color: Color(0xFF42A5F5),
        wordSpacing: 2,
        decoration: TextDecoration.underline,
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;

  const _InfoCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 22),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  color: iconColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class _TagBox extends StatelessWidget {
  final String text;
  final Color color;

  const _TagBox({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
