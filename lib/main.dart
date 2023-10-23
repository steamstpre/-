import 'dart:async';
import 'package:eiva/domain/thems/themes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:eiva/domain/navigation/naviagtion.dart';
import 'package:eiva/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    //await RequsetNotificationService().initNotification();

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    runApp(const MainApp());
  },
      (error, stack) =>
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
      ],
      routerConfig: NavigationService.router,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
    );
  }
}
