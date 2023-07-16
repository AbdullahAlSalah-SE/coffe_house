part of '../../utils/imports/app_imports.dart';

class ModelStoreList {
  List<ModelStore>? social;

  /// [
  /// ModelStore(id:5,nameApp:'facebook'),
  /// ModelStore(id:6,nameApp:'twitter'),
  /// ]
  ModelStoreList({this.social});

  ModelStoreList.fromJson(Map<String, dynamic> json)
      : assert(json[ApiKey.social] != null) {
    // * init list
    social = <ModelStore>[];
    json[ApiKey.social].forEach((app) {
      social!.add(ModelStore.fromJson(app));
    });
  }

  /// [
  /// ModelStore(id:5,nameApp:'facebook'),
  /// ModelStore(id:6,nameApp:'twitter'),
  /// ]
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    if (social != null) {
      /// ModelStore(id:5,nameApp:'facebook').toJson(),
      data[ApiKey.social] = social!.map((app) => app.toJson()).toList();
    }
    return data;
  }
}
