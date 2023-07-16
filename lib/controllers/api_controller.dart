part of '../utils/imports/app_imports.dart';

class ControllerApi extends ChangeNotifier {
  bool loading = false;

  /// [changeLoading] change value loading
  set changeLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  // ************************* Social *************************
  ModelStoreList? dataSocial;

  /// [fetchDataSocial] set data Social include [dataSocial]
  Future<void> fetchDataSocial(BuildContext context) async {
    changeLoading = true;
    dataSocial = await Api().getSocial(context);
    changeLoading = false;
    notifyListeners();
  }

  // // ************************* Premium *************************
  // ModelPremiumHeader? dataPremium;

  // /// [fetchDataPremium] set data Premium include [dataPremium]
  // Future<void> fetchDataPremium(BuildContext context) async {
  //   changeLoading = true;
  //   dataPremium = await Api().getPremium(context);
  //   changeLoading = false;
  //   notifyListeners();
  // }
}
