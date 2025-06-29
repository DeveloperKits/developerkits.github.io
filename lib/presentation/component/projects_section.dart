import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          // Placeholder for projects
          _buildProjectItem(
            context,
            title: 'Project Alpha',
            description: 'A cool project that does amazing things.',
            link: 'https://example.com/alpha',
          ),
          const SizedBox(height: 20),
          _buildProjectItem(
            context,
            title: 'Project Beta',
            description: 'Another awesome project with great features.',
            link: 'https://example.com/beta',
          ),
        ],
      ),
    );
  }

  Widget _buildProjectItem(BuildContext context, {required String title, required String description, String? link}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade700, width: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
          if (link != null) ...[
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                // Handle link tap, e.g., launch URL
              },
              child: Text(
                link,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF00FFAE),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
