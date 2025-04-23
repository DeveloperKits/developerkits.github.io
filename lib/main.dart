import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akash Das | Flutter Developer',
      theme: ThemeData.light(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  const PortfolioHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(),
            const SizedBox(height: 40),
            _buildAboutSection(),
            const SizedBox(height: 40),
            _buildProjectsSection(),
            const SizedBox(height: 40),
            _buildExperienceSection(),
            const SizedBox(height: 40),
            _buildEducationSection(),
            const SizedBox(height: 40),
            _buildContactSection(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Colors.blueGrey.shade50,
      width: double.infinity,
      child: const Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/profile.jpg'), // Add your photo in assets
          ),
          SizedBox(height: 20),
          Text(
            'Akash Das',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text(
            'Mobile App Developer | Flutter Enthusiast',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Me', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            'I am a passionate Mobile App Developer currently working at ITmedicus Solution. I specialize in Flutter and Dart, with strong experience in Firebase, Bloc, and custom UI components. I love crafting intuitive, performant apps that solve real-world problems.',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Projects', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _buildProjectCard(
            title: 'Menstrual Cycle Tracker',
            description: 'A Flutter-based feature that calculates next period dates, PMS, and ovulation using Bloc.',
          ),
          _buildProjectCard(
            title: 'Custom Visiting Card',
            description: 'Flutter app to create & share visiting cards using SharedPreferences and Bloc.',
          ),
          _buildProjectCard(
            title: 'Firebase Notification Enhancements',
            description: 'Push notification with custom buttons and user tracking using Firebase Analytics.',
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard({required String title, required String description}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(description),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Experience', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('Mobile Application Developer — ITmedicus Solution'),
          Text('Developed and maintained Flutter apps, integrated Firebase, managed GitLab, and implemented analytics.'),
        ],
      ),
    );
  }

  Widget _buildEducationSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('B.Sc. in Computer Science and Engineering'),
          Text('Daffodil International University'),
          Text('GPA: 3.61 | Student ID: 192-15-13307'),
        ],
      ),
    );
  }

  Widget _buildContactSection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Me', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('📧 Email: your.email@example.com'),
          Text('📱 Phone: +8801XXXXXXXXX'),
          Text('📍 Location: Barabkund, Sitakund, Chattogram, Bangladesh'),
        ],
      ),
    );
  }
}
