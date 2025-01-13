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

class AboutTab extends StatefulWidget {
  const AboutTab({super.key});

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> with TickerProviderStateMixin {
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
      padding: EdgeInsets.all(20.w),
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
                  // color: AppColors.appBlue,
                  height: 560.h,
                  width: 450.w,
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
                          style: GoogleFonts.birthstone(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2.w,
                              fontSize: 45.sp),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Expanded(
                          child: SizedBox(
                              width: 250.w,
                              //height: 00.h,
                              child: SocialMediaGridMenu()),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  //color: AppColors.green,
                  width: 800.w,
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
                            fontSize: 30.sp),
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
                            fontSize: 25.sp),
                      ),
                      SizedBox(
                        height: 55.h,
                      ),
                      Text(
                        "Professional Experience",
                        style: GoogleFonts.inter(
                            color: AppColors.appBlue,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2.w,
                            fontSize: 30.sp),
                      ),
                      ExperienceMenu(
                        roleTitleSize: 26.sp,
                        companyNameSize: 25.sp,
                        descriptionSize: 25.sp,
                        bulletSize: 40.sp,
                        bulletHeight: 1.25.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: VisibilityDetector(
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
                                  fontSize: 30.sp),
                            ),
                            CertificateDespTopMenu(
                              certificationSize: 25.sp,
                              bulletHeight: 1.25.h,
                              bulletSize: 40.sp,
                              builderWidth: 800.w,
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
                                  fontSize: 30.sp),
                            ),
                            EducationMenu(
                              instituteSize: 25.sp,
                              educationSize: 26.sp,
                              bulletSize: 40.sp,
                              bulletHeight: 1.25.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: VisibilityDetector(
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
                                  fontSize: 30.sp),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: TechnicalSkillsMenu(
                                  skillTitileSize: 26.sp,
                                  skillSize: 25.sp,
                                  bulletHeight: 1.h,
                                  bulletSize: 40.sp,
                                )),
                                Expanded(
                                    child: SoftSkillsMenu(
                                  skillTitileSize: 26.sp,
                                  skillSize: 25.sp,
                                  bulletSize: 40.sp,
                                  bulletHeight: 1.h,
                                )),
                              ],
                            ),
                          ],
                        ),
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
