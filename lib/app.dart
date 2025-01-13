import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:potfolio/portfolio/di/injector.dart';
import 'package:potfolio/portfolio/presentation/manager/controller/main/main_bloc.dart';
import 'package:potfolio/portfolio/presentation/routes/app_routes.dart';
import 'portfolio/presentation/themes/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 900),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<MainBloc>(),
          )
        ],
        child: MaterialApp.router(
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: AppRoutes.routes,
          builder: (context, child) => child!,
        ),
      ),
    );
  }
}
