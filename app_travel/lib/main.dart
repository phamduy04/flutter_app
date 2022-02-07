import 'package:app_travel/controller/app_theme_provider.dart';
import 'package:app_travel/controller/change_language_provider.dart';
import 'package:app_travel/theme/sharef_theme.dart';
import 'package:app_travel/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeData = await SharedPrfTheme.getTheme();
  runApp(MyApp(
    themeData: themeData,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    themeData,
  }) : super(key: key);
  final int themeData = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ChangLanguageProvider>(
            create: (context) => ChangLanguageProvider(),
          ),
          ChangeNotifierProvider<AppThemeProvider>(
            create: (context) => AppThemeProvider(themeData),
          )
        ],
        builder: (context, child) {
          return Consumer<ChangLanguageProvider>(
            builder: (context, value, child) => FutureBuilder(
                future: S.load(value.locale),
                builder: (context, snapshot) {
                  return Consumer<AppThemeProvider>(
                      builder: (context, value, child) {
                    return MaterialApp(
                        title: 'Flutter Demo',
                        theme: value.themeData,
                        debugShowCheckedModeBanner: false,
                        localizationsDelegates: const [
                          S.delegate,
                          GlobalMaterialLocalizations.delegate,
                          GlobalWidgetsLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate,
                        ],
                        supportedLocales: S.delegate.supportedLocales,
                        home: const SplashScreen());
                  });
                }),
          );
        });
  }
}
