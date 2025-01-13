import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/portfolio/domain/entities/projects/projects_modal.dart';
import 'package:potfolio/portfolio/presentation/pages/projects/common/carousel_slider.dart';
import 'package:potfolio/portfolio/presentation/pages/projects/common/key_features_builder.dart';
import 'package:potfolio/portfolio/presentation/pages/projects/common/technologies_used_builder.dart';
import 'package:potfolio/portfolio/presentation/themes/app_colors.dart';

class ProjectViewTab extends StatelessWidget {
  const ProjectViewTab({super.key, required this.projectsModal});
  final ProjectsModal projectsModal;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          projectsModal.projectName,
          style: GoogleFonts.inter(
              color: AppColors.appBlue,
              fontWeight: FontWeight.w700,
              letterSpacing: 2.w,
              fontSize: 30.sp),
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          projectsModal.overView,
          textAlign: TextAlign.justify,
          style: GoogleFonts.inter(
            height: 2,
            color: Theme.of(context).primaryColor.withOpacity(0.8),
            fontWeight: FontWeight.w400,
            wordSpacing: 2.w,
            fontSize: 25.sp,
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        CarouselImg(
          imgs: projectsModal.projectPhotos,
          viewportFraction: 10.w,
        ),
        Text(
          "Key Features:",
          style: GoogleFonts.inter(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 2.w,
            fontSize: 28.sp,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        KeyFeaturesMenu(
          projectsModal: projectsModal,
          keyFeaturesSize: 25.sp,
          bulletSize: 40.sp,
          bulletHeight: 1.2.h,
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          "Technologies Used:",
          style: GoogleFonts.inter(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
              letterSpacing: 2.w,
              fontSize: 28.sp),
        ),
        SizedBox(
          height: 20.h,
        ),
        FrontendTechnologies(
          projectsModal: projectsModal,
          keyFeaturesSize: 25.sp,
          bulletSize: 40.sp,
          bulletHeight: 1.2.h,
        ),
        BackendTechnologies(
          projectsModal: projectsModal,
          keyFeaturesSize: 25.sp,
          bulletSize: 40.sp,
          bulletHeight: 1.2.h,
        ),
      ],
    );
  }
}
