part of '../utils/imports/app_imports.dart';

class Fav_Page extends StatefulWidget {
  const Fav_Page({Key? key}) : super(key: key);

  @override
  State<Fav_Page> createState() => _Fav_PageState();
}

class _Fav_PageState extends State<Fav_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(tabs: [
        Tab(
          text: AppLangKey.favbooks.tr(),
        ),
        Tab(
          text: AppLangKey.favfood.tr(),
        )
      ]),
      body: TabBarView(children: [Fav_Books_Page(), Fav_Food_Page()]),
      // drawer: const drawer_Body(),
    );
  }
}
