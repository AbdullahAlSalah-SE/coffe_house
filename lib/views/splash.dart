part of 'package:flutter_app_store/utils/imports/app_imports.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({Key? key}) : super(key: key);

  static const routename = "/";
  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      // MaterialPageRoute<home_page> route = MaterialPageRoute(
      //   builder: (context) => const home_page(),
      // );
      // Navigator.push(context, route);
      // Navigator.pushAndRemoveUntil(context, route, (route) => false);
      // Navigator.pushReplacement(context, route);
      Navigator.pushNamed(context, Home_page.routename);
    });
    dev.log('init state',
        name: 'anything return to read the widget call on stateful');
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: Main_app_bar(),
        body: Center(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(app_images.app_logo),
          width: AppDime.half.sw,
          height: AppDime.half.sh,
        ),
        AppDime.lg.verticalSpace,
        Text(
          AppLangKey.appname.tr(),
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        ),
      ],
    )));
  }
}
