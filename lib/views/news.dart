part of '../utils/imports/app_imports.dart';

class News_Page extends StatefulWidget {
  const News_Page({Key? key}) : super(key: key);

  @override
  State<News_Page> createState() => _News_PageState();
}

class _News_PageState extends State<News_Page> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    // if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Container(
        //   child: Image(image: AssetImage(app_images.wallpaper)),
        // ),
        News_Card(
          title_text:
              'Cristiano Ronaldo latest transfer news and rumours: Man United striker dropped for Liverpool clash',
          image_path:
              'https://pbs.twimg.com/media/FaMOjU9XoAEjQ3i?format=jpg&name=medium',
          url_path: 'https://www.youtube.com/watch?v=DEEIwNKiUfI',
        ),
      ],
    );
  }
}
