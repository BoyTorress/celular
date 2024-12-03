import 'dart:async';
import 'dart:convert'; // Para usar json.decode
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

  late Map<String, String> _localizedStrings;

  Future<bool> load() async {
    // Carga la cadena JSON desde los assets de idioma
    String jsonString = await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    _localizedStrings = Map<String, String>.from(json.decode(jsonString));
    return true;
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key; // Devuelve la clave si no encuentra el valor correspondiente
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Idiomas soportados: inglés (en) y español (es)
    return ['en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
