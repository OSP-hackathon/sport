import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';
import 'package:sport2/domain/providers/localization_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sport2/routes.dart';
import 'package:sport2/ui/widgets/app_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              AnimatedTextKit(
                key: ValueKey<bool>(locale.getLocale() == const Locale('en')),
                animatedTexts: [
                  TypewriterAnimatedText(
                    AppLocalizations.of(context).typeLogin,
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
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context).username,
                  ),
                  const SizedBox(width: 8.0),
                  Flexible(
                    child: TextField(
                      controller: _loginController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context).hintLogin,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context).password,
                  ),
                  const SizedBox(width: 8.0),
                  Flexible(
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context).hintPassword,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.sportsmanURL);
                },
                child: Text(
                  AppLocalizations.of(context).login,
                ),
              )
            ],
          )),
    );
  }
}
