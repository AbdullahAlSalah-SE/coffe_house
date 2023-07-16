part of "../../utils/imports/app_imports.dart";

enum ChooseLoading { profile, image, WebView, page }

class App_Loading extends StatelessWidget {
  const App_Loading({Key? key, this.loading, this.size}) : super(key: key);

  final ChooseLoading? loading;
  final double? size;

  @override
  Widget build(BuildContext context) {
    switch (loading) {
      case ChooseLoading.image:
        return SpinKitFadingCircle(
          color: spinkittheme(context),
        );
        break;
      case ChooseLoading.WebView:
        return SpinKitCircle(
          color: spinkittheme(context),
        );
        break;
      case ChooseLoading.page:
        return SpinKitDoubleBounce(
          color: spinkittheme(context),
        );
        break;
      default:
        return SpinKitFadingCircle(
          color: spinkittheme(context),
          size: spinkitsize,
        );
        break;
    }
  }

  double get spinkitsize => (size ?? AppDime.xxlg / AppDime.one_41).w;

  Color spinkittheme(BuildContext context) =>
      AppTheme.isDark(context) ? AppColors.darkLoading : AppColors.lightLoading;
}
