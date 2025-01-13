import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potfolio/portfolio/domain/entities/about/socialmedia/social_media_modal.dart';
import 'package:potfolio/portfolio/presentation/manager/controller/main/main_bloc.dart';
import 'package:potfolio/portfolio/presentation/themes/app_assets.dart';
import 'package:potfolio/portfolio/presentation/themes/app_colors.dart';
import 'package:potfolio/portfolio/presentation/widgets/custom/custom_bottom_msg.dart';

class SocialMediaGridMenu extends StatelessWidget {
  SocialMediaGridMenu(
      {super.key,
      this.crossAxisCount,
      this.crossAxisSpacing,
      this.mainAxisSpcaing});
  final int? crossAxisCount;
  final double? crossAxisSpacing;
  final double? mainAxisSpcaing;
  final socialMediaList = <SocialMediaModal>[
    SocialMediaModal(
        id: 0,
        img: AppAssets.linkedinWhite,
        url: Uri.parse("https://www.linkedin.com/in/jishnu-kp/"),
        ontap: () {}),
    SocialMediaModal(
        id: 1,
        img: AppAssets.github,
        url: Uri.parse("https://github.com/jishnukp2482"),
        ontap: () {}),
    SocialMediaModal(
        id: 2,
        img: AppAssets.emailWhite,
        url: Uri.parse('mailto:imjishnukp@gmail.com'),
        ontap: () {}),
    SocialMediaModal(
        id: 3,
        img: AppAssets.instaWhite,
        url: Uri.parse(
            "https://www.instagram.com/_imjishnu/profilecard/?igsh=MXdmdGVzdTdycHhjNw=="),
        ontap: () {}),
    SocialMediaModal(
        id: 4,
        img: AppAssets.stackOverflowWhite,
        url: Uri.parse("https://stackoverflow.com/users/23094668/jishnu"),
        ontap: () {}),
    SocialMediaModal(
        id: 5,
        img: AppAssets.whatsappWhite,
        url: Uri.parse("https://wa.me/6282657573"),
        ontap: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: AppColors.blue,
      width: 400.w,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount ?? 2,
          crossAxisSpacing: crossAxisSpacing ?? 45.w,
          mainAxisSpacing: mainAxisSpcaing ?? 45.h,
        ),
        itemCount: socialMediaList.length,
        itemBuilder: (context, index) {
          return SocialMediaGridDesktopItem(
              socialMediaModal: socialMediaList[index]);
        },
      ),
    );
  }
}

class SocialMediaGridDesktopItem extends StatefulWidget {
  const SocialMediaGridDesktopItem({super.key, required this.socialMediaModal});
  final SocialMediaModal socialMediaModal;

  @override
  State<SocialMediaGridDesktopItem> createState() =>
      _SocialMediaGridDesktopItemState();
}

class _SocialMediaGridDesktopItemState extends State<SocialMediaGridDesktopItem>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  bool isHovered = false;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat(reverse: true);
    scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void onHover(bool isHovering) {
    setState(() {
      isHovered = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainBloc = MainBloc.get(context);
    return MouseRegion(
      onEnter: (event) => onHover(true),
      onExit: (event) => onHover(false),
      child: ScaleTransition(
        scale: scaleAnimation,
        child: BlocConsumer<MainBloc, MainState>(
          listener: (context, state) {
            if (state.urlErrorMsg != null && state.urlErrorMsg!.isNotEmpty) {
              bottomMsg(context, state.urlErrorMsg!, field: false);
            }
          },
          buildWhen: (previous, current) =>
              previous.isUrlLaunch != current.isUrlLaunch,
          builder: (context, state) {
            return GestureDetector(
              onTap: state.isUrlLaunch
                  ? null
                  : () {
                      mainBloc.add(
                          MainEvent.launchUrl(widget.socialMediaModal.url));
                    },
              child: Container(
                // width: 150.w,
                padding: EdgeInsets.all(15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.w),
                  border: Border.all(
                      color: isHovered ? AppColors.appBlue : AppColors.grey),
                  //color: AppColors.brown
                  gradient: LinearGradient(colors: [
                    Theme.of(context).primaryColorDark,
                    AppColors.lightBlack,
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                ),

                child: Image.asset(
                  widget.socialMediaModal.img,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
