import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_local/main.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppLocalizations? _appLocalizations;
  @override
  void didChangeDependencies() {
    _appLocalizations = AppLocalizations.of(context);
    super.didChangeDependencies();
  }

  ///commit
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              DateFormat.yMd().format(DateTime.now()),
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              _appLocalizations!.bye,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              _appLocalizations!.helloWorld,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'first',
            onPressed: () {
              valueNotifierLocal!.value = const Locale('uz', '');
            },
            child: const Text('uz'),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: 'second',
            onPressed: () {
              valueNotifierLocal!.value = const Locale('en', '');
            },
            child: const Text('en'),
          ),
        ],
      ),
    );
  }
}
