class Book {
  final String title;
  final String location;
  final String bookCondition;
  final String imageUrl;

  const Book({
    required this.title,
    required this.location,
    required this.bookCondition,
    required this.imageUrl,
  });

  factory Book.fromJson(Map<String, dynamic> jsonMap) {
    return Book(
      bookCondition: jsonMap['bookCondition'],
      imageUrl: jsonMap['imageUrl'],
      location: jsonMap['location'],
      title: jsonMap['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bookCondition': bookCondition,
      'imageUrl': imageUrl,
      'location': location,
      'title': title,
    };
  }
}
