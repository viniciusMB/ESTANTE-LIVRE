import 'package:estante_livre/model/book.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String tokenKey = 'token';
const String authHeaderKey = 'Authorization';

/// Base url for HTTP requests.
const String apiBaseUrl = 'http://localhost:3000';

// Creates a safe, encrypted storage.
const FlutterSecureStorage secureStorage = FlutterSecureStorage();

const List<Book> mockBooks = [
  Book(
    id: 0,
    title: 'Percy Jackson: O ladrão de raios',
    location: 'Salvador',
    bookCondition: 'Usado',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/51prOSSk2YL._SX332_BO1,204,203,200_.jpg',
    genre: 'Aventura',
    rentStatus: 'Novo',
    description: 'Um ótimo livro',
    owner: 'Edson',
  ),
  Book(
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
  ),
  Book(
    id: 2,
    title: 'O nome do vento',
    location: 'Camaçari',
    bookCondition: 'Usado',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/41QgmlY9JGL._SY344_BO1,204,203,200_QL70_ML2_.jpg',
    genre: 'Aventura',
    rentStatus: 'Novo',
    description: 'Um ótimo livro',
    owner: 'Edson',
  ),
  Book(
    id: 3,
    title: 'A culpa é das estrelas',
    location: 'Camaçari',
    bookCondition: 'Novo',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/41CXzLy05EL._SX334_BO1,204,203,200_.jpg',
    genre: 'Aventura',
    rentStatus: 'Novo',
    description: 'Um ótimo livro',
    owner: 'Edson',
  ),
  Book(
    id: 4,
    title: '365 dias',
    location: 'Vitória da Conquista',
    bookCondition: 'Usado',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/61r6cy3+KcL.jpg',
    genre: 'Aventura',
    rentStatus: 'Novo',
    description: 'Um ótimo livro',
    owner: 'Edson',
  ),
  Book(
    id: 5,
    title: 'O Senhor dos Anéis',
    location: 'Salvador',
    bookCondition: 'Novo',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/81MZ8OjmQrL.jpg',
    genre: 'Aventura',
    rentStatus: 'Novo',
    description: 'Um ótimo livro',
    owner: 'Edson',
  ),
  Book(
    id: 6,
    title: 'O guia do mochileiro das galáxias',
    location: 'Vitória da Conquista',
    bookCondition: 'Usado',
    imageUrl:
        'https://images-na.ssl-images-amazon.com/images/I/81eMrK+qVCL.jpg',
    genre: 'Aventura',
    rentStatus: 'Novo',
    description: 'Um ótimo livro',
    owner: 'Edson',
  ),
  Book(
    id: 7,
    title: "A morte e a morte de Quincas Berro D'água",
    location: 'Salvador',
    bookCondition: 'Novo',
    imageUrl:
        'https://www.coladaweb.com/wp-content/uploads/a-morte-ea-morte-de-quincas.jpg',
    genre: 'Aventura',
    rentStatus: 'Novo',
    description: 'Um ótimo livro',
    owner: 'Edson',
  ),
];
