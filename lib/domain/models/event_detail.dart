class EventDetail {
  final String id;
  final String title;
  final String description;
  final String venue;
  final List<String> speakers;
  final int capacity;
  final int remaining;

  EventDetail({
    required this.id,
    required this.title,
    required this.description,
    required this.venue,
    required this.speakers,
    required this.capacity,
    required this.remaining,
  });

  factory EventDetail.fromJson(Map<String, dynamic> json) => EventDetail(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        venue: json['venue'],
        speakers: List<String>.from(json['speakers']),
        capacity: json['capacity'],
        remaining: json['remaining'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'venue': venue,
        'speakers': speakers,
        'capacity': capacity,
        'remaining': remaining,
      };
}