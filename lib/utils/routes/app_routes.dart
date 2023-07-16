part of '../imports/app_imports.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> route = {
    Splash_Page.routename: (context) => const Splash_Page(),
    Home_page.routename: (context) => const Home_page(),
    Store_Page.routename: (context) => const Store_Page(),
    Books_Page.routename: ((context) => const Books_Page()),
    Book_Screen.routename: ((context) => const Book_Screen()),
    Webview_screen.routename: ((context) => const Webview_screen(
          url_sarp: '',
        )),
    DetailPage.routename: ((context) => DetailPage()),
  };
}
