import 'package:flutter/material.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_SkillItem> frontendSkills = [
      const _SkillItem(name: "Next.js", icon: Icons.web),
      const _SkillItem(name: "Tailwind", icon: Icons.color_lens),
      const _SkillItem(name: "Firebase", icon: Icons.fireplace),
      const _SkillItem(name: "Redux", icon: Icons.sync_alt),
      const _SkillItem(name: "Framer", icon: Icons.movie_creation),
    ];

    final List<_SkillItem> backendSkills = [
      const _SkillItem(name: "Node.js", icon: Icons.developer_mode),
      const _SkillItem(name: "GraphQL", icon: Icons.graphic_eq),
      const _SkillItem(name: "AWS", icon: Icons.cloud),
      const _SkillItem(name: "PostgreSQL", icon: Icons.storage),
      const _SkillItem(name: "MongoDB", icon: Icons.dataset),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _skillHeader("Frontend Skills"),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: frontendSkills.map((e) => _SkillCard(skill: e)).toList(),
          ),
          const SizedBox(height: 32),
          _skillHeader("Backend Skills"),
          const SizedBox(height: 16),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: backendSkills.map((e) => _SkillCard(skill: e)).toList(),
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

class _SkillItem {
  final String name;
  final IconData icon;

  const _SkillItem({required this.name, required this.icon});
}

class _SkillCard extends StatelessWidget {
  final _SkillItem skill;

  const _SkillCard({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(skill.icon, color: Colors.white, size: 20),
          const SizedBox(width: 8),
          Text(skill.name,
              style: const TextStyle(
                  color: Colors.white70, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
