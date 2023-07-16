// import '../utils/imports/app_imports.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import '../utils/language/app_lang_key.dart';
// import '../widgets/app_bar.dart';
part of 'package:flutter_app_store/utils/imports/app_imports.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);
  static const routename = '/Home';

  @override
  State<Home_page> createState() => _home_pageState();
}

class _home_pageState extends State<Home_page> {
  int currentIndex = 0;
  List<Widget> pages = [
    const Store_Page(),
    const Books_Page(),
    const Order_Page(),
    const News_Page(),
    const Fav_Page(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: const home_app_bar(),
          drawer: const drawer_Body(),
          body: pages.elementAt(currentIndex),
          // body: Container(
          //   child: Image(image: AssetImage(app_images.wallpaper)),
          // ),
          bottomNavigationBar: bottom_nav_bar(),
        ));
    // );
  }

  BottomNavigationBar bottom_nav_bar() {
    return BottomNavigationBar(
      elevation: 10,
      currentIndex: currentIndex,
      selectedItemColor: AppTheme.isDark(context) ? Colors.white : Colors.black,
      backgroundColor: Colors.black54,
      onTap: changeSelected,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.store,
            color: AppColors.nica_grey,
          ),
          label: AppLangKey.store.tr(),
          activeIcon: Icon(
            Icons.store,
            color: AppColors.nipa_brown,
          ),
          tooltip: AppLangKey.store.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.book,
            color: AppColors.nica_grey,
          ),
          label: AppLangKey.library.tr(),
          activeIcon: Icon(
            Icons.book,
            color: AppColors.nipa_brown,
          ),
          tooltip: AppLangKey.library.tr(),
          // backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: AppSvg.odrders,
          label: AppLangKey.odrders.tr(),
          activeIcon: AppSvg.odrders,
          tooltip: AppLangKey.odrders.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.newspaper,
            color: AppColors.nica_grey,
          ),
          label: AppLangKey.news.tr(),
          activeIcon: Icon(
            Icons.newspaper,
            color: AppColors.nipa_brown,
          ),
          tooltip: AppLangKey.news.tr(),
        ),
        newMethod(),
      ],
    );
  }

  BottomNavigationBarItem newMethod() {
    return BottomNavigationBarItem(
      icon: Icon(
        Icons.favorite,
        color: AppColors.nica_grey,
      ),
      label: AppLangKey.favorite.tr(),
      activeIcon: Icon(
        Icons.favorite,
        // color: AppColors.nica_brown,
        color: AppColors.nipa_brown,
      ),
      tooltip: AppLangKey.favorite.tr(),
    );
  }

  void changeSelected(index) {
    currentIndex = index;
    setState(() {
      // currentIndex:
      currentIndex;
    });
  }
}
