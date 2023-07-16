import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'utils/imports/app_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.langpath,
      startLocale: Locale(ken),
      fallbackLocale: Locale(
        ken,
      ),
      child: App_Restart(child: const app_store_main())));
}
