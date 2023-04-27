import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';
import 'package:sport2/domain/providers/localization_provider.dart';
import 'package:sport2/routes.dart';
import 'package:sport2/ui/widgets/app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sport2/ui/widgets/side_bar.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    var locale = Provider.of<LocalizationNotifier>(context, listen: false);
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
          padding: const EdgeInsets.all(200.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: AnimatedTextKit(
                  key: ValueKey<bool>(locale.getLocale() == const Locale('en')),
                  animatedTexts: [
                    TypewriterAnimatedText(
                      AppLocalizations.of(context).helloString,
                      textStyle: const TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                      speed: const Duration(milliseconds: 30),
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 10),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
              ),
              Row(children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.loginUrl);
                    },
                    child: Text(
                      AppLocalizations.of(context).yes,
                      style: const TextStyle(fontSize: 20),
                    )),
                const Text("  /   "),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.loginUrl);
                    },
                    child: Text(
                      AppLocalizations.of(context).no,
                      style: const TextStyle(fontSize: 20),
                    )),
              ]),
            ],
          )),
    );
  }
}
