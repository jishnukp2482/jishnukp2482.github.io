import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:potfolio/portfolio/domain/entities/about/certificate/certificate_modal.dart';
import 'package:potfolio/portfolio/presentation/themes/app_colors.dart';

class CertificateDespTopMenu extends StatelessWidget {
  CertificateDespTopMenu(
      {super.key,
      this.certificationSize,
      this.bulletSize,
      this.bulletHeight,
      this.builderWidth});
  final double? certificationSize;
  final double? bulletSize;
  final double? bulletHeight;
  final double? builderWidth;
  final certificateList = <CertificateModal>[
    CertificateModal(
        id: 0,
        certificateName:
            "Android Flutter App Development from NationalCouncil for Technology and Training",
        certificationYear: "2022")
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: AppColors.green,
      width: builderWidth ?? 650.w,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: certificateList.length,
        itemBuilder: (context, index) {
          return CertificateDeskTopItem(
            certificateModal: certificateList[index],
            certificationSize: certificationSize,
            bulletHeight: bulletHeight,
            bulletSize: bulletSize,
          );
        },
      ),
    );
  }
}

class CertificateDeskTopItem extends StatelessWidget {
  const CertificateDeskTopItem(
      {super.key,
      required this.certificateModal,
      this.certificationSize,
      this.bulletSize,
      this.bulletHeight});
  final CertificateModal certificateModal;
  final double? certificationSize;
  final double? bulletSize;
  final double? bulletHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\u2022',
            style: TextStyle(
                fontSize: bulletSize ?? 30.sp,
                height: bulletHeight ?? 1.25.h,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Text(
              "${certificateModal.certificateName} : [ ${certificateModal.certificationYear} ]",
              softWrap: true, // Ensure wrapping occurs when necessary
              overflow: TextOverflow.visible,
              style: GoogleFonts.inter(
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                fontWeight: FontWeight.w400,
                wordSpacing: 2.w,
                height: 2.h,
                fontSize: certificationSize ?? 17.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
