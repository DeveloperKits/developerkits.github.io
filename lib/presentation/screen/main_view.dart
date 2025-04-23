import 'package:flutter/material.dart';
import 'package:portfolio/presentation/component/intro_section.dart';
import 'package:portfolio/presentation/component/long_details.dart';
import 'package:portfolio/presentation/component/photo_section.dart';
import 'package:portfolio/presentation/component/skill_section.dart';
class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IntroSection(),
            Row(
              children: [
                Expanded(flex: 1, child: PhotoSection(),),
                Expanded(flex: 3, child: LongDetailsSection(),),
              ],
            ),
            SkillSection(),
          ],
        ),
      ),
    );
  }
}
