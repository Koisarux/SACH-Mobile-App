import 'package:flutter/material.dart';

/// Smooth fade + tiny upward slide — feels native and tab-like.
/// Use [sachPush] instead of Navigator.push for all tab-level navigation.
class SachRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  SachRoute({required this.page})
    : super(
        pageBuilder: (_, __, ___) => page,
        transitionDuration: const Duration(milliseconds: 220),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, child) {
          final fade = CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut,
          );
          final slide =
              Tween<Offset>(
                begin: const Offset(0, 0.04),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
              );
          return FadeTransition(
            opacity: fade,
            child: SlideTransition(position: slide, child: child),
          );
        },
      );
}

/// Push a new screen with the smooth SACH transition.
Future<T?> sachPush<T>(BuildContext context, Widget page) {
  return Navigator.of(context).push<T>(SachRoute(page: page));
}

/// Push and remove all previous routes (e.g., back to Dashboard).
Future<T?> sachPushAndRemoveUntil<T>(BuildContext context, Widget page) {
  return Navigator.of(
    context,
  ).pushAndRemoveUntil<T>(SachRoute(page: page), (route) => false);
}
