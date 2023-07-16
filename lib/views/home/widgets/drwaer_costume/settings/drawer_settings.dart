part of '../../../../../utils/imports/app_imports.dart';

class Settings_Drawer extends StatelessWidget {
  const Settings_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* my app
        AppDime.lg.verticalSpace,
        DrawerDesignSettings(
            title: AppLangKey.appname.tr(), svg_icon: AppSvg.myApp),
        //*language
        DrawerDesignSettings(
          title: AppLangKey.language.tr(),
          svg_icon: AppSvg.lang,
          trailing: Drawer_Lang(),
        ),
        //*Theme
        DrawerDesignSettings(
          title: AppLangKey.dark.tr(),
          svg_icon: AppSvg.theme,
          trailing: DrawerTheme(),
        ),

        //* terms
        DrawerDesignSettings(
            title: AppLangKey.terms.tr(), svg_icon: AppSvg.terms),

        //*Log out
        DrawerDesignSettings(
            title: AppLangKey.logout.tr(), svg_icon: AppSvg.logout),
      ],
    );
  }
}
