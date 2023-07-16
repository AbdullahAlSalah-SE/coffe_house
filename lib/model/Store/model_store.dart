part of '../../utils/imports/app_imports.dart';

class ModelStore {
  String? id;
  String? nameApp;
  String? type;
  String? rating;
  String? size;
  String? download;
  String? image;
  List<String>? images;
  String? description;

  ModelStore({
    this.id,
    this.nameApp,
    this.type,
    this.rating,
    this.size,
    this.download,
    this.image,
    this.images,
    this.description,
  });

  ModelStore.fromJson(Map<String, dynamic> json)
      : assert(json.isNotEmpty),
        id = json[ApiKey.id],
        nameApp = json[ApiKey.nameapp],
        type = json[ApiKey.type],
        rating = json[ApiKey.rating],
        size = json[ApiKey.size],
        download = json[ApiKey.download],
        image = json[ApiKey.image],
        images = json[ApiKey.images].cast<String>(),
        description = json[ApiKey.description];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[ApiKey.id] = id;
    data[ApiKey.nameapp] = nameApp;
    data[ApiKey.type] = type;
    data[ApiKey.rating] = rating;
    data[ApiKey.size] = size;
    data[ApiKey.download] = download;
    data[ApiKey.image] = image;
    data[ApiKey.images] = images;
    data[ApiKey.description] = description;
    return data;
  }
}
