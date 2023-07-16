part of '../../utils/imports/app_imports.dart';

class Fav_Food_Page extends StatelessWidget {
  const Fav_Food_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Fav_Food_Card(
            food_title: 'lemonade',
            image_path:
                'https://images.unsplash.com/photo-1513558161293-cdaf765ed2fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
        Fav_Food_Card(
            food_title: 'juice',
            image_path:
                'https://images.unsplash.com/photo-1497534446932-c925b458314e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=772&q=80')
      ],
    );
  }
}
