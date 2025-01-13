import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:potfolio/main.dart';
import 'package:potfolio/portfolio/domain/entities/home/app_bar_title_modal.dart';
import 'package:potfolio/portfolio/presentation/manager/controller/main/main_bloc.dart';
import 'package:potfolio/portfolio/presentation/pages/main/main_page.dart';

import 'package:potfolio/portfolio/presentation/themes/app_colors.dart';
import 'package:potfolio/portfolio/presentation/widgets/custom/custom_print.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key, required this.isMobileAppbar});
  final bool isMobileAppbar;
  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController buttonAnimationController;
  late Animation<double> scaleAnimation;
  bool isbuttonHovered = false;

  @override
  void initState() {
    buttonAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.1,
    ).animate(CurvedAnimation(
        parent: buttonAnimationController, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  void dispose() {
    buttonAnimationController.dispose();
    super.dispose();
  }

  void isHover(bool value) {
    setState(() {
      isbuttonHovered = value;
      if (isbuttonHovered) {
        buttonAnimationController.forward();
      } else {
        buttonAnimationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainPageState = MainPage.mainPagekey.currentState;
    final isDrawerOpen = mainPageState?.isDrawerOpen ?? false;
    final mainBloc = MainBloc.get(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MouseRegion(
          onEnter: (event) => isHover(true),
          onExit: (event) => isHover(false),
          child: AnimatedBuilder(
            animation: scaleAnimation,
            builder: (context, child) {
              return Transform.scale(
                scale: scaleAnimation.value,
                child: SizedBox(
                  height: 35.h,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.white.withOpacity(0.1),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: AppColors.grey),
                            borderRadius: BorderRadius.circular(15.w))),
                    onPressed: () {
                      mainBloc.add(MainEvent.downloadResume());
                    },
                    label: Text(
                      "Resume",
                      style: GoogleFonts.nunitoSans(
                          color: isbuttonHovered
                              ? AppColors.appBlue
                              : Theme.of(context).primaryColor,
                          fontSize: widget.isMobileAppbar ? 30.sp : 18.sp,
                          letterSpacing: 2.w,
                          fontWeight: FontWeight.w500),
                    ),
                    iconAlignment: IconAlignment.end,
                    icon: Icon(
                      Icons.download,
                      color: isbuttonHovered
                          ? AppColors.appBlue
                          : Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        widget.isMobileAppbar
            ? IconButton(
                onPressed: () {
                  if (isDrawerOpen) {
                    mainPageState?.closeDrawer();
                  } else {
                    mainPageState?.openDrawer();
                  }
                },
                icon: Icon(
                  isDrawerOpen ? Icons.close_rounded : Icons.menu_outlined,
                  color: Theme.of(context).primaryColor,
                ))
            : AppBarTitleMenu(
                isMobileAppBarTitleMenu: false,
              ),
      ],
    );
  }
}

class AppBarTitleMenu extends StatefulWidget {
  const AppBarTitleMenu({super.key, required this.isMobileAppBarTitleMenu});
  final bool isMobileAppBarTitleMenu;
  @override
  State<AppBarTitleMenu> createState() => _AppBarTitleMenuState();
}

class _AppBarTitleMenuState extends State<AppBarTitleMenu> {
  final titleList = <AppBarTitleModal>[
    AppBarTitleModal(icon: MdiIcons.home, title: "Home", ontap: () {}, id: 0),
    AppBarTitleModal(
        icon: MdiIcons.accountArrowRightOutline,
        title: "About",
        ontap: () {},
        id: 1),
    AppBarTitleModal(
        icon: MdiIcons.apps, title: "Projects", ontap: () {}, id: 2),
    AppBarTitleModal(
        icon: Icons.contact_mail_outlined,
        title: "Contacts",
        ontap: () {},
        id: 3),
  ];
  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    final mainBloc = MainBloc.get(context);
    return widget.isMobileAppBarTitleMenu
        ? Drawer(
            backgroundColor: AppColors.backgroundcolor,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: titleList.length,
              itemBuilder: (context, index) {
                return MouseRegion(
                  onEnter: (event) => setState(() => hoveredIndex = index),
                  onExit: (event) => setState(() => hoveredIndex = null),
                  child: GestureDetector(
                    onTap: () {
                      customPrint("id mobile==${titleList[index].id}");
                      mainBloc
                          .add(MainEvent.selectBody(id: titleList[index].id));
                    },
                    child: BlocConsumer<MainBloc, MainState>(
                      buildWhen: (previous, current) =>
                          previous.body != current.body,
                      listener: (context, state) {},
                      listenWhen: (previous, current) =>
                          previous.body != current.body,
                      builder: (context, state) {
                        return AppBarTitleMobileItem(
                          appBarTitleModal: titleList[index],
                          color: state.body == titleList[index].id ||
                                  hoveredIndex == index
                              ? AppColors.appBlue
                              : Theme.of(context).primaryColor,
                          fontsize: 55.sp,
                          verticalpaddingAll: 10.h,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          )
        : SizedBox(
            height: 50.h,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: titleList.length,
              itemBuilder: (context, index) {
                return MouseRegion(
                  onEnter: (event) => setState(() => hoveredIndex = index),
                  onExit: (event) => setState(() => hoveredIndex = null),
                  child: GestureDetector(
                    onTap: () {
                      customPrint("id==${titleList[index].id}");
                      mainBloc
                          .add(MainEvent.selectBody(id: titleList[index].id));
                    },
                    child: BlocConsumer<MainBloc, MainState>(
                      listener: (context, state) {},
                      buildWhen: (previous, current) =>
                          previous.body != current.body,
                      listenWhen: (previous, current) =>
                          previous.body != current.body,
                      builder: (context, state) {
                        return AppBarTitleItem(
                          appBarTitleModal: titleList[index],
                          color: state.body == titleList[index].id ||
                                  hoveredIndex == index
                              ? AppColors.appBlue
                              : Theme.of(context).primaryColor,
                          fontsize: 18.sp,
                          horizontalpaddingAll: 25.w,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          );
  }
}

class AppBarTitleItem extends StatefulWidget {
  const AppBarTitleItem(
      {super.key,
      required this.appBarTitleModal,
      required this.color,
      required this.fontsize,
      this.horizontalpaddingAll,
      this.verticalpaddingAll});
  final AppBarTitleModal appBarTitleModal;
  final Color color;
  final double fontsize;
  final double? horizontalpaddingAll;
  final double? verticalpaddingAll;

  @override
  State<AppBarTitleItem> createState() => _AppBarTitleItemState();
}

class _AppBarTitleItemState extends State<AppBarTitleItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalpaddingAll ?? 0,
          vertical: widget.verticalpaddingAll ?? 0),
      child: Text(
        widget.appBarTitleModal.title,
        style: GoogleFonts.nunitoSans(
            fontWeight: FontWeight.w500,
            fontSize: widget.fontsize,
            color: widget.color),
      ),
    );
  }
}

class AppBarTitleMobileItem extends StatefulWidget {
  const AppBarTitleMobileItem(
      {super.key,
      required this.appBarTitleModal,
      required this.color,
      required this.fontsize,
      this.horizontalpaddingAll,
      this.verticalpaddingAll});
  final AppBarTitleModal appBarTitleModal;
  final Color color;
  final double fontsize;
  final double? horizontalpaddingAll;
  final double? verticalpaddingAll;

  @override
  State<AppBarTitleMobileItem> createState() => _AppBarTitleMobileItemState();
}

class _AppBarTitleMobileItemState extends State<AppBarTitleMobileItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: widget.horizontalpaddingAll ?? 0,
          vertical: widget.verticalpaddingAll ?? 0),
      child: ListTile(
        leading: Icon(
          widget.appBarTitleModal.icon,
          color: widget.color,
        ),
        title: Text(
          widget.appBarTitleModal.title,
          style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.w500,
              fontSize: widget.fontsize,
              color: widget.color),
        ),
      ),
    );
  }
}
