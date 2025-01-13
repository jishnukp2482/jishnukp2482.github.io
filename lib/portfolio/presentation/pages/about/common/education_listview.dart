import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/portfolio/domain/entities/about/education/education_modal.dart';

class EducationMenu extends StatelessWidget {
  EducationMenu(
      {super.key,
      this.educationSize,
      this.instituteSize,
      this.bulletSize,
      this.bulletHeight});
  final double? educationSize;
  final double? instituteSize;
  final double? bulletSize;
  final double? bulletHeight;
  final educationList = <EducationModal>[
    EducationModal(
        id: 0,
        education: "Flutter Cross Platform App Development",
        instituteName: "LUMINAR TECHNOLAB",
        year: "2022–23"),
    EducationModal(
        id: 1,
        education: "Diploma in Computer Engineering",
        instituteName: "IPT & GPT COLLEGE SHORANUR",
        year: "2019-22"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: educationList.length,
      itemBuilder: (context, index) {
        return EducationDeskTopItem(
          educationModal: educationList[index],
          instituteSize: instituteSize,
          educationSize: educationSize,
          bulletHeight: bulletHeight,
          bulletSize: bulletSize,
        );
      },
    );
  }
}

class EducationDeskTopItem extends StatelessWidget {
  const EducationDeskTopItem(
      {super.key,
      required this.educationModal,
      this.educationSize,
      this.instituteSize,
      this.bulletSize,
      this.bulletHeight});
  final EducationModal educationModal;
  final double? educationSize;
  final double? instituteSize;
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
              Text(
                "${educationModal.education} : [ ${educationModal.year} ]",
                style: GoogleFonts.inter(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.w,
                    fontSize: educationSize ?? 19.sp),
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              educationModal.instituteName,
              style: GoogleFonts.inter(
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.w,
                  fontSize: instituteSize ?? 17.sp),
            ),
          ),
        ],
      ),
    );
  }
}
