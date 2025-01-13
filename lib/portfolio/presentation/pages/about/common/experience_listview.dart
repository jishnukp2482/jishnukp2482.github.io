import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/portfolio/domain/entities/about/experience/experience_modal.dart';

class ExperienceMenu extends StatelessWidget {
  ExperienceMenu({super.key, this.roleTitleSize, this.companyNameSize, this.descriptionSize, this.bulletSize, this.bulletHeight});
  final double? roleTitleSize;
  final double? companyNameSize;
  final double? descriptionSize;
    final double? bulletSize;
  final double? bulletHeight;
  final experienceList = <ExperienceModal>[
    ExperienceModal(
        id: 0,
        roleTitle: "Flutter Developer",
        companyName: "Safe Software and Integrated Solution Pvt Ltd",
        experience: "2022-Present",
        description:
            "As a Lead Flutter Developer, I drive the development of cross-platform mobile and web applications. My responsibilities include overseeing the architecture and implementation of scalable, maintainable solutions while mentoring team members on best practices. I specialize in state management, API integration, and creating seamless, engaging user experiences. With a focus on performance and efficiency, I ensure the delivery of high-quality products that meet both technical requirements and business objectives."),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: experienceList.length,
      itemBuilder: (context, index) {
        return EXperienceItem(experienceModal: experienceList[index],descriptionSize: descriptionSize,roleTitleSize: roleTitleSize,companyNameSize: companyNameSize,
        bulletHeight: bulletHeight,bulletSize: bulletSize,
        );
      },
    );
  }
}

class EXperienceItem extends StatelessWidget {
  const EXperienceItem({super.key, required this.experienceModal, this.roleTitleSize, this.companyNameSize, this.descriptionSize, this.bulletSize, this.bulletHeight});
  final ExperienceModal experienceModal;
  final double? roleTitleSize;
  final double? companyNameSize;
  final double? descriptionSize;
  final double? bulletSize;
  final double? bulletHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                  "${experienceModal.roleTitle} : [ ${experienceModal.experience} ]",
                  style: GoogleFonts.inter(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2.w,
                      fontSize: roleTitleSize ?? 19.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            experienceModal.companyName,
            style: GoogleFonts.inter(
                color: Theme.of(context).primaryColor.withOpacity(0.9),
                fontWeight: FontWeight.w400,
                letterSpacing: 2.w,
                fontSize:companyNameSize?? 17.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            experienceModal.description,
            textAlign: TextAlign.justify,
            style: GoogleFonts.inter(
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                fontWeight: FontWeight.w400,
                wordSpacing: 2.w,
                fontSize:descriptionSize?? 17.sp),
          ),
        ],
      ),
    );
  }
}
