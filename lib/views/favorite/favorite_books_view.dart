part of '../../utils/imports/app_imports.dart';

class Fav_Books_Page extends StatelessWidget {
  const Fav_Books_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Fav_books_Card(
            food_title: 'White Horse',
            image_path:
                'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781839081408/assassins-creed-valhalla-sword-of-the-white-horse-9781839081408_lg.jpg'),
        Fav_books_Card(
            food_title: 'Lord of the Ring',
            image_path:
                'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1566425108i/33.jpg'),
        Fav_books_Card(
            food_title: 'Song of Glory',
            image_path:
                'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1566425108i/33.jpg'),
      ],
    );
  }
}
