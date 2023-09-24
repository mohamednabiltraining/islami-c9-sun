import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c9_sun/providers/SettingsProvider.dart';
import 'package:islami_c9_sun/ui/MyThemeData.dart';
import 'package:islami_c9_sun/ui/chapterDetails/ChapterDetailsScreen.dart';
import 'package:islami_c9_sun/ui/hadethDetails/HadethDetailsScreen.dart';
import 'package:provider/provider.dart';

import 'ui/home/HomeScreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    // by default listen for changes in settings privider
    // search for settings provider
    // inside widgets tree
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: settingsProvider.currentTheme,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [Locale('en'), Locale('ar')],
      locale: Locale(settingsProvider.currentLocale),
    );
  }
}
