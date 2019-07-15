import 'package:mall/api/parser.dart';
import 'package:mall/constants/Constants.dart';
import 'home_model.dart';
class IanResponse{
  String message = "未知错误";
  int code = -1;
  Map result_json = {};
  ApiType apiType;
  T reslut<T extends BaseModel>(){
    return parser.start(this.result_json, this.apiType);
  }




}