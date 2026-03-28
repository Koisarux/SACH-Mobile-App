import 'package:flutter/material.dart';

/// Singleton that tracks whether the app is in Urdu mode.
/// Call [LocaleStore.instance.toggle()] to switch languages.
class LocaleStore extends ChangeNotifier {
  LocaleStore._();
  static final LocaleStore instance = LocaleStore._();

  bool isUrdu = false;

  void toggle() {
    isUrdu = !isUrdu;
    notifyListeners();
  }

  TextDirection get dir => isUrdu ? TextDirection.rtl : TextDirection.ltr;
}
