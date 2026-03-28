import 'dart:math';

// Shared FIR data model used by dashboard and file_fir_screen
class FirItem {
  final String id;
  final String title;
  final String date;
  final String status;
  final String address;
  final String city;
  final String district;
  final String description;
  final String incidentDate;
  final String category;
  final String blockchainHash;

  FirItem({
    required this.id,
    required this.title,
    required this.date,
    this.status = 'Pending',
    this.address = '',
    this.city = '',
    this.district = '',
    this.description = '',
    this.incidentDate = '',
    this.category = '',
    String? blockchainHash,
  }) : blockchainHash = blockchainHash ?? _genHash();

  static String _genHash() {
    const chars = '0123456789abcdef';
    final rng = Random();
    return '0x${List.generate(64, (_) => chars[rng.nextInt(chars.length)]).join()}';
  }
}
