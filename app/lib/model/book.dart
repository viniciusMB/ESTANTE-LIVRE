class Book {
  final int id;
  final String title;
  final String description;
  final String genre;
  final String location;
  final String bookCondition;
  final String rentStatus;
  final String imageUrl;
  final String owner;

  const Book({
    required this.id,
    required this.title,
    required this.description,
    required this.genre,
    required this.location,
    required this.bookCondition,
    required this.rentStatus,
    required this.imageUrl,
    required this.owner,
  });

  factory Book.fromJson(Map<String, dynamic> jsonMap) {
    return Book(
      id: jsonMap['id'] ?? 0,
      title: jsonMap['title'] ?? '',
      description: jsonMap['description'] ?? '',
      genre: jsonMap['genre'] ?? '',
      location: jsonMap['location'] ?? '',
      bookCondition: jsonMap['bookCondition'] ?? '',
      rentStatus: jsonMap['rentStatus'] ?? '',
      imageUrl: jsonMap['imageUrl'] ?? '',
      owner: jsonMap['owner'] ?? '',
    );
  }

  factory Book.createMock() {
    return const Book(
      id: 1,
      title: 'Harry Potter e a pedra filosofal',
      location: 'Vitória da Conquista',
      bookCondition: 'Novo',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81iqZ2HHD-L.jpg',
      genre: 'Aventura',
      rentStatus: 'Novo',
      description: 'Um ótimo livro',
      owner: 'Edson',
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

  @override
  operator ==(other) => other is Book && id == other.id;

  @override
  int get hashCode => super.hashCode ^ id;
}
