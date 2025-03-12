enum FromWho { me, other }

class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;
  final DateTime createdAt = DateTime.now();

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
    DateTime? createdAt,
  }) : assert(text.isNotEmpty),
       assert(fromWho == FromWho.me || fromWho == FromWho.other),
       assert(createdAt == null || createdAt.isBefore(DateTime.now()));
}
