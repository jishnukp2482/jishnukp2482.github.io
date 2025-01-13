import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:potfolio/portfolio/domain/entities/projects/projects_modal.dart';
import 'package:potfolio/portfolio/presentation/pages/home/home.dart';
import 'package:potfolio/portfolio/presentation/pages/main/main_page.dart';
import 'package:potfolio/portfolio/presentation/pages/projects/project_view.dart';
import 'package:potfolio/portfolio/presentation/pages/splash.dart';
import 'package:potfolio/portfolio/presentation/routes/app_pages.dart';
import 'package:potfolio/portfolio/presentation/themes/app_assets.dart';
import 'package:potfolio/portfolio/presentation/themes/app_colors.dart';
import 'package:potfolio/portfolio/presentation/widgets/custom/refres_me.dart';

class AppRoutes {
  static GoRouter routes = GoRouter(
    initialLocation: AppPages.mainScreen,
    routes: [
      GoRoute(
        path: AppPages.splashScreen,
        name: AppPages.splashScreen,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: AppPages.homeScreen,
        name: AppPages.homeScreen,
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: AppPages.mainScreen,
        name: AppPages.mainScreen,
        builder: (context, state) => MainPage(),
      ),
      GoRoute(
          path: AppPages.projectsView,
          name: AppPages.projectsView,
          builder: (context, state) {
            final projectsModal = state.extra as ProjectsModal?;
            if (projectsModal == null) {
              return RefreshMe();
            } else {
              return ProjectsViewPage(projectsModal: projectsModal);
            }
          })
    ],
  );
}
