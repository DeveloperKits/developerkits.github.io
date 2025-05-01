import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xFF0C0F0D), Color(0xFF121B16)],
          center: Alignment.topLeft,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left Side (Text)
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hi, I am',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Akash Das',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '👋',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              SizedBox(height: 15),

              Text.rich(
                TextSpan(
                  text: 'Mobile Application Developer crafting exceptional digital experiences with ',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                  children: [
                    TextSpan(
                      text: 'modern technologies',
                      style: TextStyle(color: Color(0xFF00FFAE)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Right Side (Collaboration Button)
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1A1F1D),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                const Icon(Icons.circle, size: 10, color: Colors.greenAccent),
                const SizedBox(width: 8),
                Text(
                  'Open for collaborations',
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
