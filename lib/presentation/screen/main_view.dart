import 'package:flutter/material.dart';
import 'package:portfolio/presentation/component/intro_section.dart';
import 'package:portfolio/presentation/component/long_details.dart';
import 'package:portfolio/presentation/component/photo_section.dart';
import 'package:portfolio/presentation/component/skill_section.dart';
import 'package:portfolio/presentation/helper/GridPainter.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Grid Background (Full Screen)
          SizedBox.expand(
            child: CustomPaint(
              painter: GridPainter(),
            ),
          ),

          // Content Section
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    children: [
                      IntroSection(),
                      Row(
                        children: [
                          Expanded(flex: 1, child: PhotoSection()),
                          Expanded(flex: 3, child: LongDetailsSection()),
                        ],
                      ),
                      //SkillSection(),
                    ],
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
