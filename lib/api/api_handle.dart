part of '../utils/imports/app_imports.dart';

abstract class ApiHandle {
  // * get  Social app as List
  Future<ModelStoreList?> getSocial(BuildContext context);

  // * get  Premium app as List
//  Future<ModelPremiumHeader?> getPremium(BuildContext context);
}
