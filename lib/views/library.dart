part of '../utils/imports/app_imports.dart';

class Books_Page extends StatelessWidget {
  const Books_Page({Key? key}) : super(key: key);
  static const routename = '/library';

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(), // new

      children: const [
        Books_Card(
            image_path: 'assets/images/ACV_White_Horse.jpg',
            book_title: 'White Horse'),
        Books_Card(
            image_path: 'assets/images/LotR_Book.jpg',
            book_title: 'Lord of the Ring'),
        Books_Card(
            image_path: 'assets/images/ACV_Forgotten_Myths.jpg',
            book_title: 'Forgotten Myths'),
        Books_Card(
            image_path: 'assets/images/ACV_White_Horse.jpg',
            book_title: 'White Horse'),
        Books_Card(
            image_path: 'assets/images/LotR_Book.jpg',
            book_title: 'Lord of the Ring'),
        Books_Card(
            image_path: 'assets/images/ACV_Forgotten_Myths.jpg',
            book_title: 'Forgotten Myths')
      ],
    );
  }
}
