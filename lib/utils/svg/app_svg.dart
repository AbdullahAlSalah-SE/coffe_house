part of '../imports/app_imports.dart';

class AppSvg {
  static double xlg = (AppDime.xlg / AppDime.one_25); // 25

  static SvgPicture myApp = SvgPicture.asset(
    AppIcons.myApp,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture lang = SvgPicture.asset(
    AppIcons.translate,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture theme = SvgPicture.asset(
    AppIcons.theme_light,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture terms = SvgPicture.asset(
    AppIcons.terms,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture logout = SvgPicture.asset(
    AppIcons.logout,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture notification = SvgPicture.asset(
    AppIcons.notification,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture odrders = SvgPicture.asset(
    AppIcons.order_paper,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture pencil = SvgPicture.asset(
    AppIcons.pencil,
    width: xlg.w,
    height: xlg.w,
  );

 

  // TODO : logout icon

}
