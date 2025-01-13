import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/portfolio/domain/entities/projects/projects_modal.dart';

class KeyFeaturesMenu extends StatelessWidget {
  const KeyFeaturesMenu(
      {super.key,
      this.keyFeaturesSize,
      this.bulletSize,
      this.bulletHeight,
      required this.projectsModal});
  final double? keyFeaturesSize;

  final double? bulletSize;
  final double? bulletHeight;
  final ProjectsModal projectsModal;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: projectsModal.keyFetaures.length,
      itemBuilder: (context, index) {
        return KeyFeaturesItem(
          keyFeatureText: projectsModal.keyFetaures[index],
          bulletHeight: bulletHeight,
          bulletSize: bulletSize,
          keyFeaturesSize: keyFeaturesSize,
        );
      },
    );
  }
}

class KeyFeaturesItem extends StatelessWidget {
  const KeyFeaturesItem(
      {super.key,
      this.keyFeaturesSize,
      this.bulletSize,
      this.bulletHeight,
      required this.keyFeatureText});

  final double? keyFeaturesSize;
  final double? bulletSize;
  final double? bulletHeight;
  final String keyFeatureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10.w, 10.w, 10.w),
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
              keyFeatureText,
              textAlign: TextAlign.justify,
              style: GoogleFonts.inter(
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                  wordSpacing: 2.w,
                  height: 2.h,
                  fontSize: keyFeaturesSize ?? 17.sp),
            ),
          ),
        ],
      ),
    );
  }
}
