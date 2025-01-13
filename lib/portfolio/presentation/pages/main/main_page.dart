import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potfolio/portfolio/presentation/manager/controller/main/main_bloc.dart';
import 'package:potfolio/portfolio/presentation/pages/about/about.dart';
import 'package:potfolio/portfolio/presentation/pages/contacts/contacts.dart';
import 'package:potfolio/portfolio/presentation/pages/home/home.dart';
import 'package:potfolio/portfolio/presentation/pages/projects/projects.dart';
import 'package:potfolio/portfolio/presentation/widgets/appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static final GlobalKey<ScaffoldState> mainPagekey =
      GlobalKey<ScaffoldState>();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isDrawerOpen = false;

  void handleDrawerState(bool open) {
    setState(() {
      isDrawerOpen = open;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: MainPage.mainPagekey,
          drawer: AppBarTitleMenu(isMobileAppBarTitleMenu: true),
          onDrawerChanged: (isOpened) => handleDrawerState(isOpened),
          body: Column(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 600) {
                    // Mobile view
                    return Padding(
                      padding:
                          EdgeInsets.only(right: 20.w, left: 20.w, top: 10.h),
                      child: HomeAppBar(
                        isMobileAppbar: true,
                      ),
                    );
                  } else {
                    //others
                    return Padding(
                      padding:
                          EdgeInsets.only(left: 68.w, right: 68.w, top: 80.w),
                      child: HomeAppBar(
                        isMobileAppbar: false,
                      ),
                    );
                  }
                },
              ),
              Expanded(
                child: BlocConsumer<MainBloc, MainState>(
                  buildWhen: (previous, current) =>
                      previous.body != current.body,
                  listener: (context, state) {},
                  listenWhen: (previous, current) =>
                      previous.body != current.body,
                  builder: (context, state) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 900),
                      transitionBuilder: (child, animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      child: _getBody(state.body),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}

Widget _getBody(int body) {
  switch (body) {
    case 0:
      return HomePage(
        key: ValueKey(0),
      );
    case 1:
      return AboutPage(
        key: ValueKey(1),
      );
    case 2:
      return ProjectsPage(
        key: ValueKey(2),
      );
    case 3:
      return ContactsPage(
        key: ValueKey(3),
      );

    default:
      return HomePage(
        key: ValueKey(0),
      );
  }
}
