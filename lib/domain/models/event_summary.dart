import 'package:intl/intl.dart';

class EventSummary {
  final String id;
  final String title;
  final String category;
  final DateTime startsAt;
  final String city;
  final int price;
  final String thumbnail;

  EventSummary({
    required this.id,
    required this.title,
    required this.category,
    required this.startsAt,
    required this.city,
    required this.price,
    required this.thumbnail,
  });

  /// ✅ Empty state factory
  factory EventSummary.empty() => EventSummary(
        id: '',
        title: '',
        category: '',
        startsAt: DateTime.now(),
        city: '',
        price: 0,
        thumbnail: '',
      );

  /// ✅ From JSON
  factory EventSummary.fromJson(Map<String, dynamic> json) => EventSummary(
        id: (json['id'] ?? '').toString(),
        title: (json['title'] ?? '').toString(),
        category: (json['category'] ?? '').toString(),
        startsAt: DateTime.tryParse(json['startsAt'] ?? '') ?? DateTime.now(),
        city: (json['city'] ?? '').toString(),
        price: int.tryParse(json['price']?.toString() ?? '0') ?? 0,
        thumbnail: (json['thumbnail'] ?? '').toString(),
      );

  /// ✅ To JSON
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'category': category,
        'startsAt': startsAt.toIso8601String(),
        'city': city,
        'price': price,
        'thumbnail': thumbnail,
      };
}

/// ✅ Date formatting extension
extension DateFormatExt on DateTime {
  String formatted() => DateFormat('MMM dd, yyyy hh:mm a').format(this);
}
