import 'package:flutter/foundation.dart';
import 'fir_model.dart';

/// Global in-memory store for FIRs, shared across Dashboard and My FIRs screen.
class FirStore extends ChangeNotifier {
  FirStore._();
  static final FirStore instance = FirStore._();

  final List<FirItem> _firs = [];
  List<FirItem> get firs => List.unmodifiable(_firs);

  void add(FirItem item) {
    _firs.insert(0, item);
    notifyListeners();
  }

  int get total => _firs.length;
  int get pending => _firs.where((f) => f.status == 'Pending').length;
  int get resolved => _firs.where((f) => f.status == 'Resolved').length;
}
