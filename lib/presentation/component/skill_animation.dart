import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/presentation/helper/WelcomeDialog.dart';
import 'package:portfolio/presentation/model/skill_item.dart';

class SkillAnimation extends StatefulWidget {
  const SkillAnimation({super.key});

  @override
  State<SkillAnimation> createState() => _SkillAnimationState();
}

class _SkillAnimationState extends State<SkillAnimation> {
  final ScrollController _scrollController = ScrollController();
  late Timer _timer;

  final List<SkillItem> skills = const [
    SkillItem(name: "Kotlin", icon: Icons.code),
    SkillItem(name: "Java", icon: Icons.code),
    SkillItem(name: "Dart", icon: Icons.code),
    SkillItem(name: "Python", icon: Icons.code),
    SkillItem(name: "C++", icon: Icons.code),
    SkillItem(name: "Android", icon: Icons.android),
    SkillItem(name: "Flutter", icon: Icons.flutter_dash),
    SkillItem(name: "Firebase", icon: Icons.cloud),
    SkillItem(name: "Bloc", icon: Icons.bolt),
    SkillItem(name: "SQLite", icon: Icons.storage),
    SkillItem(name: "MVVM", icon: Icons.architecture),
    SkillItem(name: "Design Pattern", icon: Icons.design_services),
    SkillItem(name: "OOP", icon: Icons.devices),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showWelcomeDialog(context);
    });
    _startAutoScroll();
  }

  void _startAutoScroll() {
    const duration = Duration(milliseconds: 10);
    _timer = Timer.periodic(duration, (timer) {
      if (_scrollController.hasClients) {
        double maxScroll = _scrollController.position.maxScrollExtent;
        double current = _scrollController.offset;

        if (current < maxScroll) {
          _scrollController.jumpTo(current + 1);
        } else {
          _scrollController.jumpTo(0); // loop
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade600, width: 0.5),
      ),
      child: SizedBox(
        height: 60,
        child: ListView.separated(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: skills.length,
          separatorBuilder: (_, __) => const SizedBox(width: 15),
          itemBuilder: (context, index) {
            return _skillItem(skills[index].name, skills[index].icon);
          },
        ),
      ),
    );
  }


  Widget _skillItem(String name, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 8),
          Text(
            name,
            style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
