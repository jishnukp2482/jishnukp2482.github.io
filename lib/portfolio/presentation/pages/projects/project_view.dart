import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potfolio/portfolio/domain/entities/projects/projects_modal.dart';

import 'package:potfolio/portfolio/presentation/pages/projects/desktop/project_view_desktop.dart';
import 'package:potfolio/portfolio/presentation/pages/projects/mobile/project_view_mobile.dart';
import 'package:potfolio/portfolio/presentation/pages/projects/tab/project_view_tab.dart';

class ProjectsViewPage extends StatelessWidget {
  const ProjectsViewPage({super.key, required this.projectsModal});
  final ProjectsModal projectsModal;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile view
              return ListView(
                children: [
                  ProjectViewMobile(
                    projectsModal:projectsModal
                  ),
                ],
              );
            } else if (constraints.maxWidth < 1200) {
              // Tablet view
              return ListView(
                padding: EdgeInsets.all(50.w),
                children: [
                  ProjectViewTab(
                    projectsModal: projectsModal
                  ),
                ],
              );
            } else {
              // Desktop view
              return ListView(
                padding: EdgeInsets.all(50.w),
                children: [
                  ProjectViewDesktop(
                    projectsModal:projectsModal
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
