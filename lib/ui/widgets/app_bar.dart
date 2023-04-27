import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sport2/domain/providers/localization_provider.dart';
import 'package:sport2/domain/providers/theme_provider.dart';
import 'package:sport2/ui/ui_kit/themes/dark_theme.dart';
import 'package:sport2/ui/ui_kit/themes/light_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeNotifier>(context, listen: false);
    final locale = Provider.of<LocalizationNotifier>(context, listen: false);
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            onPressed: () {
              theme.setTheme(
                  theme.getTheme() == lightTheme ? darkTheme : lightTheme);
            },
            icon: const Icon(Icons.brightness_6)),
        IconButton(
          onPressed: () {
            locale.setLocale(locale.getLocale() == const Locale('en')
                ? const Locale('ru')
                : const Locale('en'));
          },
          icon: const Icon(Icons.language),
        )
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(30);
}
