import 'package:flutter/material.dart';

class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Work Experience',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          // Placeholder for work experience
          _buildExperienceItem(
            context,
            company: 'Acme Corp',
            title: 'Software Engineer',
            dates: 'Jan 2022 - Present',
            responsibilities: [
              'Developed and maintained web applications.',
              'Collaborated with cross-functional teams.',
            ],
          ),
          const SizedBox(height: 20),
          _buildExperienceItem(
            context,
            company: 'Beta LLC',
            title: 'Junior Developer',
            dates: 'Jun 2020 - Dec 2021',
            responsibilities: [
              'Assisted senior developers with coding tasks.',
              'Learned new technologies and best practices.',
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceItem(BuildContext context, {required String company, required String title, required String dates, required List<String> responsibilities}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade700, width: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title at $company',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            dates,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 8),
          for (String responsibility in responsibilities)
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  Expanded(
                    child: Text(
                      responsibility,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
