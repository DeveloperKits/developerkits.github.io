import 'package:flutter/material.dart';

class LongDetailsSection extends StatelessWidget {
  const LongDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.white, fontSize: 18),
              children: [
                _highlight("A ", Colors.white),
                _tag("Software Developer", Colors.blue),
                _highlight(" who creates seamless, scalable, and visually stunning mobile applications."),
              ],
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.white70, fontSize: 16),
              children: [
                _highlight("With expertise in "),
                _tag("Flutter", Colors.green),
                _highlight(", "),
                _tag("Firebase", Colors.greenAccent),
                _highlight(" and "),
                _tag("Bloc", Colors.tealAccent),
                _highlight(
                    ", I blend functionality with aesthetics to deliver impactful solutions."),
                _highlight(" Known for my creative "),
                _tag("problem-solving", Colors.lightBlue),
                _highlight(
                    ", I bridge the gap between frontend and backend with precision, ensuring every detail contributes to an exceptional user experience."),
              ],
            ),
          ),
          const SizedBox(height: 24),

          const Row(
            children: [
              Expanded(child: _InfoCard(title: "⚙ Skills", text: "Building performant Flutter UIs, Bloc architecture, Firebase integration")),
              SizedBox(width: 12),
              Expanded(child: _InfoCard(title: "🕹 Hobbies", text: "Tech tinkering, traveling, photography")),
              SizedBox(width: 12),
              Expanded(child: _InfoCard(title: "🎯 Goal", text: "Let’s create something awesome together.")),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "P.S. I’m not really ",
            style: TextStyle(color: Colors.white70),
          ),

          const Row(
            children: [
              _TagLabel(label: "Batman", color: Colors.amber),
              SizedBox(width: 4),
              Text(" but I might be the ", style: TextStyle(color: Colors.white70)),
              _TagLabel(label: "hero", color: Colors.orange),
              Text(" your project needs! 🧑‍💻", style: TextStyle(color: Colors.white70)),
            ],
          ),
        ],
      ),
    );
  }

  TextSpan _highlight(String text, [Color color = Colors.white70]) {
    return TextSpan(
      text: text,
      style: TextStyle(color: color, height: 1.5),
    );
  }

  TextSpan _tag(String text, Color color) {
    return TextSpan(
      text: ' $text ',
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        backgroundColor: color.withOpacity(0.1),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String text;

  const _InfoCard({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 8),
          Text(text, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}

class _TagLabel extends StatelessWidget {
  final String label;
  final Color color;

  const _TagLabel({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(label,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
