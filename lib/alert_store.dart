import 'package:flutter/material.dart';

/// Alert data model
class AlertItem {
  final IconData icon;
  final String titleEn;
  final String titleUr;
  final String subtitleEn;
  final String subtitleUr;
  final String time;
  bool isUnread;

  AlertItem({
    required this.icon,
    required this.titleEn,
    required this.titleUr,
    required this.subtitleEn,
    required this.subtitleUr,
    required this.time,
    this.isUnread = false,
  });

  String title(bool isUrdu) => isUrdu ? titleUr : titleEn;
  String subtitle(bool isUrdu) => isUrdu ? subtitleUr : subtitleEn;
}

/// Global singleton alert store — shared between Dashboard popup and AlertsScreen.
class AlertStore extends ChangeNotifier {
  AlertStore._();
  static final AlertStore instance = AlertStore._();

  final List<AlertItem> alerts = [];

  int get unreadCount => alerts.where((a) => a.isUnread).length;

  void markAllRead() {
    for (final a in alerts) a.isUnread = false;
    notifyListeners();
  }

  void markRead(AlertItem item) {
    item.isUnread = false;
    notifyListeners();
  }

  void clearAll() {
    alerts.clear();
    notifyListeners();
  }
}
