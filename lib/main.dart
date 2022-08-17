import 'package:flutter/material.dart';
import 'package:flutter_local/pages/home/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

ValueNotifier<Locale>? valueNotifierLocal =
    ValueNotifier(const Locale('en', ''));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
        valueListenable: valueNotifierLocal!,
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            locale: value,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: const HomePage(),
          );
        });
  }
}
