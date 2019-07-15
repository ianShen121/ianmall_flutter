
import 'package:mall/model/home_model.dart';

import 'package:mall/constants/Constants.dart';
class parser{
  static BaseModel start(Map json,ApiType t){

    Map data = json["data"];

    switch (t){
      case ApiType.home:
      Home_model model = Home_model.fromJson(data);
      return model; break;
      default:return null;break;

    }
    
  }


}