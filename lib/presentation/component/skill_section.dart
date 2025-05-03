import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> lanSkills = [
      Icons.code,
      Icons.code,
      Icons.code,
      Icons.code,
      Icons.code,
    ];

    final List<IconData> techSkills = [
      Icons.android,
      Icons.flutter_dash,
      Icons.cloud,
      Icons.storage,
      Icons.design_services,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade600, width: 0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _skillHeader("Language Skills"),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: lanSkills.map((e) => _SkillCard(icon: e)).toList(),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 32),

          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade600, width: 0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: techSkills.map((e) => _SkillCard(icon: e)).toList(),
                  ),
                  const SizedBox(height: 16),
                  _skillHeader("Tech Skills"),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget _skillHeader(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}


class _SkillCard extends StatelessWidget {
  final IconData icon;

  const _SkillCard({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade700,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade600, width: 0.5),
      ),
      child: Icon(icon, color: Colors.white, size: 20,),
    );
  }
}
