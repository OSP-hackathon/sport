import 'package:flutter/material.dart';

class LocalizationNotifier with ChangeNotifier {
  Locale locale;

  LocalizationNotifier(this.locale);

  getLocale() => locale;

  setLocale(Locale locale2) async {
    locale = locale2;
    notifyListeners();
  }
}
