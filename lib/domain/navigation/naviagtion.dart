import 'package:eiva/consts/consts.dart';
import 'package:eiva/domain/di/di.dart';
import 'package:eiva/feature/intro_screen/intro_screen.dart';
import 'package:eiva/feature/login_screen/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class NavigationService {
  static GoRouter get router {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    final getIt = GetIt.instance;

    return GoRouter(
      navigatorKey: navigatorKey,
      debugLogDiagnostics: true,
      initialLocation: AppConsts.pathToIntroScreen,
      routes: <RouteBase>[
        GoRoute(
          path: AppConsts.pathToIntroScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const IntroScreen();
          },
        ),
        GoRoute(
            path: AppConsts.pathToLoginScreen,
            pageBuilder: (BuildContext context, GoRouterState state) =>
                CustomTransitionPage(
                  key: state.pageKey,
                  child: BlocProvider(
                    create: (context) => getIt<DependencyInjection>().loginBloc,
                    child: const LoginScreen(),
                  ),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(
                    opacity: CurveTween(curve: Curves.easeInOutCirc)
                        .animate(animation),
                    child: child,
                  ),
                ),
            redirect: (context, state) {
              // getIt<LoginCheck>().checkStatusOfLogin();
              // if (getIt<LoginCheck>().statusOfLogin) {
              //   return AppConsts.pathToMainScreen;
              // }
              return null;
            }),
        // GoRoute(
        //   path: AppConsts.pathToMainScreen,
        //   pageBuilder: (BuildContext context, GoRouterState state) {
        //     final mainScreen = BlocProvider(
        //       create: (context) => MainScreenBloc(),
        //       child: const MainScreen(),
        //     );
        //     if (getIt<LoginCheck>().statusOfLogin) {
        //       return CustomTransitionPage(
        //         key: state.pageKey,
        //         child: mainScreen,
        //         transitionsBuilder:
        //             (context, animation, secondaryAnimation, child) =>
        //                 FadeTransition(
        //           opacity: CurveTween(curve: Curves.linear).animate(animation),
        //           child: child,
        //         ),
        //       );
        //     } else {
        //       return CustomTransitionPage(
        //         key: state.pageKey,
        //         child: mainScreen,
        //         transitionsBuilder:
        //             (context, animation, secondaryAnimation, child) =>
        //                 FadeTransition(
        //           opacity: CurveTween(curve: Curves.easeInOutCirc)
        //               .animate(animation),
        //           child: child,
        //         ),
        //       );
        //     }
        //   },
        // ),
        // GoRoute(
        //   path: AppConsts.pathToAccountScreen,
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const AccountScreen();
        //   },
        // ),
      ],
    );
  }
}
