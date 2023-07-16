part of '../utils/imports/app_imports.dart';

class Api extends ApiHandle {
  final int timeOut = 100;

  @override
  Future<ModelStoreList?> getSocial(BuildContext context) async {
    try {
      // * URL
      Uri url = Uri.parse(
          '${ApiKey.baseApi}${AppLang.currentLang(context)}${ApiKey.apiSocial}');
      // * req get
      http.Response res =
          await http.get(url).timeout(Duration(seconds: timeOut));
      ModelStoreList? dataModel;
      if (res.statusCode == 200) {
        // * success
        // * body  string convert Json (Map)
        Map<String, dynamic> json = convert.jsonDecode(res.body);
        dataModel = ModelStoreList.fromJson(json);
      } else {
        dataModel = null;
        // throw 'no data fetch ';
        // * Error
        AppToast.toast(AppLangKey.errorFetchData.tr());
      }
      return dataModel;
    } catch (error) {
      dev.log('error Fetch Data Social',
          name: 'Api Social', error: error.toString());
    }
    return null;
  }
}
