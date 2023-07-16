part of 'package:flutter_app_store/utils/imports/app_imports.dart';

class home_app_bar extends StatelessWidget implements PreferredSizeWidget {
  const home_app_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.black54,
      title: Center(
          child: Text(
        AppLangKey.appname.tr(),
      )),
      leading: IconButton(
        onPressed: () => {Scaffold.of(context).openDrawer()},
        icon: Icon(Icons.menu),
      ),
      // ),
      actions: [
        IconButton(
          onPressed: () => dev.log('my app icon'),
          icon: AppSvg.notification,
        ),
        IconButton(
            onPressed: () => dev.log('settings icon'),
            icon: Icon(
              Icons.settings,
              size: AppDime.xlg,
              color: Colors.white,
            ),
            padding: EdgeInsets.symmetric(horizontal: AppDime.md)),
      ],
      // bottom: TabBar(tabs: [
      //   Tab(
      //     text: AppLangKey.socialMediaTab.tr(),
      //   ),
      //   Tab(
      //     text: AppLangKey.premiumTab.tr(),
      //   )
      // ]),
    );
  }

  @override
  // Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
