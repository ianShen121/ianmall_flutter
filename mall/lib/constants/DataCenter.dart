import 'package:mall/constants/Constants.dart';
import 'package:mall/tools/pref_util.dart';
class DataCenter{
  static DataCenter _share;

  factory DataCenter() => _share ??= DataCenter();

  void setToken(String t){
    setPrefString("token", t);
  }

  String getToken(){
    return getPrefString("token") ?? "";
  }










}