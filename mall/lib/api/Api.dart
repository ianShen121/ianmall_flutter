import 'package:mall/constants/Constants.dart';


class Api{

  static final home = Constant.host + "/app/home/index";

  static String getUrl(ApiType t){
    String path = "";
    switch (t){
      case ApiType.home:path = "/app/home/index";break;
      case ApiType.login:path = "/app/auth/login";break;
      default:break;

    }
    return Constant.host + path;
  }
  



}


