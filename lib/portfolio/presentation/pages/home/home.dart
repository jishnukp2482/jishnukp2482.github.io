import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potfolio/portfolio/presentation/pages/home/desktop/home_desktop.dart';
import 'package:potfolio/portfolio/presentation/pages/home/mobile/home_mobile.dart';
import 'package:potfolio/portfolio/presentation/pages/home/tab/home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          // Mobile view
          return ListView(
            children: [
              HomeMobile(),
            ],
          );
        } else if (constraints.maxWidth < 1200) {
          // Tablet view
          return ListView(
            padding: EdgeInsets.all(50.w),
            children: [HomeTab()],
          );
        } else {
          // Desktop view
          return ListView(
            padding: EdgeInsets.all(50.w),
            children: [HomeDesktop()],
          );
        }
      },
    );
  }
}
