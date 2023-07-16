part of '../imports/app_imports.dart';

class AppThemeChoose {
  static String? enFont = GoogleFonts.abel().fontFamily;
  static String? arFont = GoogleFonts.italiana().fontFamily;

  // * check lang
  static String? fontFamily(BuildContext context) =>
      AppLang.isAr(context) ? arFont : enFont;

  //* light
  static ThemeData lightTheme(BuildContext context) {
    String? fontApp = fontFamily(context);
    return ThemeData.light().copyWith(
        //* appbar
        // colorScheme: ThemeData().colorScheme.copyWith(
        //       primary: AppColors.bgGreen,
        //       onPrimary: AppColors.bgGreen,
        //       secondary: AppColors.bgGreen,
        //       onSecondary: AppColors.bgWhite,
        //     ),

        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.nipa_brown,
          foregroundColor: AppColors.bgBlack,
          centerTitle: true,
          titleTextStyle: AppTheme.h5(context)?.copyWith(fontFamily: fontApp),
          elevation: 10,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColors.bgBlack,
              displayColor: AppColors.bgBlack,
              // fontFamily: GoogleFonts.pacifico().fontFamily,
              fontFamily: fontApp,
            ),
        tabBarTheme: Theme.of(context)
            .tabBarTheme
            .copyWith(labelColor: AppColors.bgBlack));
  }

  //* dark
  static ThemeData darkTheme(BuildContext context) {
    String? fontApp = fontFamily(context);
    return ThemeData.dark().copyWith(
      //* appbar
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.nipa_brown,
        foregroundColor: AppColors.bgBlack,
        centerTitle: true,
        titleTextStyle: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontFamily: fontApp),
        elevation: 10,
      ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColors.bgWhite,
            displayColor: AppColors.bgWhite,
            // fontFamily: GoogleFonts.pacifico().fontFamily,
            fontFamily: fontApp,
          ),
      tabBarTheme: Theme.of(context).tabBarTheme.copyWith(
            labelColor: AppColors.bgWhite,
          ),
    );
  }
}
