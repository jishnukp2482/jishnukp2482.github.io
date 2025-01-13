import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/portfolio/domain/entities/about/skills/skill_modal.dart';

class TechnicalSkillsMenu extends StatelessWidget {
  TechnicalSkillsMenu(
      {super.key,
      this.skillTitileSize,
      this.skillSize,
      this.bulletSize,
      this.bulletHeight});
  final double? skillTitileSize;
  final double? skillSize;
  final double? bulletSize;
  final double? bulletHeight;
  final technicalSkillsList = <SkillModal>[
    SkillModal(id: 0, skillName: "Flutter"),
    SkillModal(id: 1, skillName: "Dart"),
    SkillModal(id: 2, skillName: "BLoC"),
    SkillModal(id: 3, skillName: "Provider"),
    SkillModal(id: 4, skillName: "Getx"),
    SkillModal(id: 5, skillName: "API Integration"),
    SkillModal(id: 6, skillName: "Node.js"),
    SkillModal(id: 7, skillName: "Version Control"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Technical Skills",
          style: GoogleFonts.inter(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.w,
              fontSize: skillTitileSize ?? 19.sp),
        ),
        SizedBox(
          height: 15.h,
        ),
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
          itemCount: technicalSkillsList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SkillsItem(
              skillModal: technicalSkillsList[index],
              skillSize: skillSize,
              bulletHeight: bulletHeight,
              bulletSize: bulletSize,
            );
          },
        ),
      ],
    );
  }
}

class SoftSkillsMenu extends StatelessWidget {
  SoftSkillsMenu({super.key, this.skillTitileSize, this.skillSize, this.bulletSize, this.bulletHeight});
  final double? skillTitileSize;
  final double? skillSize;
    final double? bulletSize;
  final double? bulletHeight;
  final softSkillsList = <SkillModal>[
    SkillModal(id: 0, skillName: "Problem-solving"),
    SkillModal(id: 1, skillName: "Collaboration"),
    SkillModal(id: 2, skillName: "Communication"),
    SkillModal(id: 3, skillName: "Time Management"),
    SkillModal(id: 4, skillName: "Adaptability"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Soft Skills",
          style: GoogleFonts.inter(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.w,
              fontSize: skillTitileSize ?? 19.sp),
        ),
        SizedBox(
          height: 15.h,
        ),
        ListView.builder(
          itemCount: softSkillsList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SkillsItem(
              skillModal: softSkillsList[index],
              skillSize: skillSize,
              bulletHeight: bulletHeight,
              bulletSize: bulletSize,
            );
          },
        ),
      ],
    );
  }
}

class SkillsItem extends StatelessWidget {
  const SkillsItem(
      {super.key,
      required this.skillModal,
      this.skillSize,
      this.bulletSize,
      this.bulletHeight});
  final SkillModal skillModal;
  final double? skillSize;
  final double? bulletSize;
  final double? bulletHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\u2022',
            style: TextStyle(
                fontSize: bulletSize ?? 30.sp,
                height: bulletHeight ?? 1.h,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Text(
              skillModal.skillName,
              textAlign: TextAlign.left,
              style: GoogleFonts.inter(
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                  wordSpacing: 2.w,
                  height: 1.5.h,
                  fontSize: skillSize ?? 17.sp),
            ),
          ),
        ],
      ),
    );
  }
}
