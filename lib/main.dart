import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sport2/domain/providers/localization_provider.dart';
import 'package:sport2/domain/providers/theme_provider.dart';
import 'package:sport2/ui/pages/login_page.dart';
import 'package:sport2/ui/pages/sportsman/sportsman_page.dart';
import 'package:sport2/ui/ui_kit/themes/dark_theme.dart';
import 'package:sport2/ui/ui_kit/themes/light_theme.dart';
import 'routes.dart';
import 'ui/pages/init_page.dart';
import 'ui/pages/sign_up_page.dart';
import 'package:provider/provider.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'ui/pages/sportsman/sportsman_event.dart';
import 'ui/pages/sportsman/sportsman_resume.dart';
import 'ui/pages/sportsman/sportsman_settings.dart';
import 'ui/pages/sportsman/sportsman_statistics.dart';
import 'ui/pages/sportsman/sportsman_tasks.dart';
import 'ui/pages/sportsman/sportsman_teams.dart';
import 'ui/pages/sportsman/sportsman_trainings.dart';

void main() async {
  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  await Hive.initFlutter();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]).then((_) {
    SharedPreferences.getInstance().then((prefs) {
      var darkModeOn = prefs.getBool('darkMode') ?? true;
      var locale = prefs.getString('locale') ?? 'en';
      runApp(
        ChangeNotifierProvider<LocalizationNotifier>(
          create: (_) => LocalizationNotifier(Locale(locale)),
          child: ChangeNotifierProvider<ThemeNotifier>(
            create: (_) => ThemeNotifier(darkModeOn ? darkTheme : lightTheme),
            child: MyApp(),
          ),
        ),
      );
    });
  });
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final localeNotifier = Provider.of<LocalizationNotifier>(context);

    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: themeNotifier.getTheme(),
      locale: localeNotifier.locale,
      // theme: ref.watch(themeProvider),
      routes: <String, WidgetBuilder>{
        AppRoutes.initUrl: (_) => const InitPage(),
        AppRoutes.signupUrl: (_) => const SignUpPage(),
        AppRoutes.loginUrl: (_) => const LoginPage(),
        AppRoutes.sportsmanURL: (_) => const SportsmanPage(),
        AppRoutes.sportsmanStatisticsURL: (_) =>
            const SportsmanStatisticsPage(),
        AppRoutes.sportsmanTeamsURL: (_) => const SportsmanTeamsPage(),
        AppRoutes.sportsmanEventsURL: (_) => const SportsmanEventsPage(),
        AppRoutes.sportsmanResumeURL: (_) => const SportsmanResumePage(),
        AppRoutes.sportsmanTrainingsURL: (_) => const SportsmanTrainingsPage(),
        AppRoutes.sportsmanTasksURL: (_) => const SportsmanTasksPage(),
        AppRoutes.sportsmanSettingsURL: (_) => const SportsmanSettingsPage(),
      },
      // initialRoute: AppRoutes.initUrl  ,
      initialRoute: AppRoutes.sportsmanURL,
    );
  }
}
