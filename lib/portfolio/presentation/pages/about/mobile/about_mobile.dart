import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/portfolio/presentation/pages/about/common/certificate_listview.dart';
import 'package:potfolio/portfolio/presentation/pages/about/common/education_listview.dart';
import 'package:potfolio/portfolio/presentation/pages/about/common/experience_listview.dart';
import 'package:potfolio/portfolio/presentation/pages/about/common/skills_listview.dart';
import 'package:potfolio/portfolio/presentation/pages/about/common/socialmedia_grid.dart';
import 'package:potfolio/portfolio/presentation/themes/app_colors.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile>
    with TickerProviderStateMixin {
  bool certificationsVisible = false;
  bool skillsVisible = false;
  late AnimationController certificationAnimationController;
  late AnimationController skillsAnimationController;
  late Animation<Offset> certificationSlideAnimation;
  late Animation<Offset> skillsSlideAnimation;
  @override
  void initState() {
    certificationAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    certificationSlideAnimation = Tween<Offset>(
      begin: Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(
        parent: certificationAnimationController, curve: Curves.easeOut));
    skillsAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    skillsSlideAnimation = Tween<Offset>(
      begin: Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(
        parent: skillsAnimationController, curve: Curves.easeOut));
    super.initState();
  }

  onvisibityChanged(String section, bool isvisible) {
    if (section == "certifications" && isvisible && !certificationsVisible) {
      setState(() {
        certificationsVisible = true;
        certificationAnimationController.forward();
      });
    } else if (section == "skills" && isvisible && !skillsVisible) {
      setState(() {
        skillsVisible = true;
        skillsAnimationController.forward();
      });
    }
  }

  @override
  void dispose() {
    skillsAnimationController.dispose();
    certificationAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  //color: AppColors.green,
                  width: 1100.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Me",
                        style: GoogleFonts.inter(
                            color: AppColors.appBlue,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.w,
                            fontSize: 50.sp),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        "Hi,I’m Jishnu kp a dedicated Flutter Developer specializing in building scalable, maintainable mobile and web applications using Clean Architecture and MVVM design patterns. Skilled in state management, API integration, and UI design, I create seamless cross-platform experiences. By leveraging Firebase, I enhance applications with real-time functionality, delivering exceptional performance. Passionate about innovation, I transform ideas into impactful technology.",
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.inter(
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.8),
                            fontWeight: FontWeight.w400,
                            wordSpacing: 2.w,
                            fontSize: 45.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  // color: AppColors.appBlue,
                  height: 340.h,
                  width: 200.w,
                  child: Container(
                    padding: EdgeInsets.all(20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.w),
                      //  color: AppColors.brown
                      gradient: LinearGradient(
                          colors: [
                            Theme.of(context).primaryColorDark,
                            AppColors.lightBlack,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Let's Connect",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.birthstone(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2.w,
                              fontSize: 60.sp),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Expanded(
                          child: SizedBox(
                              width: 120.w,
                              //height: 00.h,
                              child: SocialMediaGridMenu(
                                crossAxisCount: 1,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Professional Experience",
                  style: GoogleFonts.inter(
                      color: AppColors.appBlue,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2.w,
                      fontSize: 50.sp),
                ),
                ExperienceMenu(
                  roleTitleSize: 46.sp,
                  companyNameSize: 45.sp,
                  descriptionSize: 45.sp,
                  bulletHeight: 1.2.h,
                  bulletSize: 80.sp,
                ),
                SizedBox(
                  height: 55.h,
                ),
                VisibilityDetector(
                  key: const Key('certifications-section'),
                  onVisibilityChanged: (info) {
                    if (info.visibleFraction > 0.2) {
                      onvisibityChanged("certifications", true);
                    }
                  },
                  child: SlideTransition(
                    position: certificationSlideAnimation,
                    child: AnimatedOpacity(
                      opacity: certificationsVisible ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 600),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Certifications",
                            style: GoogleFonts.inter(
                                color: AppColors.appBlue,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2.w,
                                fontSize: 50.sp),
                          ),
                          CertificateDespTopMenu(
                            certificationSize: 45.sp,
                            bulletHeight: 1.25.h,
                            bulletSize: 80.sp,
                            builderWidth: double.infinity.w,
                          ),
                          SizedBox(
                            height: 100.h,
                          ),
                          Text(
                            "Education",
                            style: GoogleFonts.inter(
                                color: AppColors.appBlue,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2.w,
                                fontSize: 50.sp),
                          ),
                          EducationMenu(
                            instituteSize: 45.sp,
                            educationSize: 46.sp,
                            bulletHeight: 1.2.h,
                            bulletSize: 80.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 55.h,
                ),
                VisibilityDetector(
                  key: const Key('skills-section'),
                  onVisibilityChanged: (info) {
                    if (info.visibleFraction > 0.2) {
                      onvisibityChanged("skills", true);
                    }
                  },
                  child: SlideTransition(
                    position: skillsSlideAnimation,
                    child: AnimatedOpacity(
                      opacity: skillsVisible ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 600),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Skills",
                            style: GoogleFonts.inter(
                                color: AppColors.appBlue,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2.w,
                                fontSize: 50.sp),
                          ),
                          TechnicalSkillsMenu(
                            skillTitileSize: 46.sp,
                            skillSize: 45.sp,
                            bulletHeight: 1.2.h,
                            bulletSize: 60.sp,
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          SoftSkillsMenu(
                            skillTitileSize: 46.sp,
                            skillSize: 45.sp,
                            bulletHeight: 1.2.h,
                            bulletSize: 60.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
