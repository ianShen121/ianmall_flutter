
import 'package:dio/dio.dart';
import 'package:mall/model/response.dart';
import 'package:mall/constants/Constants.dart';
import 'package:mall/api/Api.dart';
class Method{
  static final String get = "GET";
  static final String post = "POST";
  static final String push = "PUT";
  static final String head = "HEAD";
  static final String delete = "DELETE";
  static final String patch = "PATCH";

}

//普通格式的header
Map<String, dynamic> headers = {
  "Accept":"application/json",
//  "Content-Type":"application/x-www-form-urlencoded",
};
//json格式的header
Map<String, dynamic> headersJson = {
  "Accept":"application/json",
  "Content-Type":"application/json; charset=UTF-8",
};
class HttpUtil {
 static const String GET = "get";
  static const String POST = "post";

  //get请求
  static void get(ApiType type, Function callBack,
      {Map<String, String> params}) async {
    _request(type,Api.getUrl(type), callBack,
        method: GET, params: params);
  }

  //post请求
  static void post(ApiType type, Function callBack,
      {Map<String, String> params}) async {
    _request(type, Api.getUrl(type), callBack,
        method: POST, params: params);
  }

  //具体的还是要看返回数据的基本结构
  //公共代码部分
  static void _request(ApiType type, String url, Function callBack,
      {String method,
      Map<String, String> params}) async {
    print("<net> url :<" + method + ">" + url);

    if (params != null && params.isNotEmpty) {
      print("<net> params :" + params.toString());
    }

    String errorMsg = "";
    int statusCode;

    try {
      Response response;
     if (method == GET) {
        //组合GET请求的参数
        if (params != null && params.isNotEmpty) {
          StringBuffer sb = new StringBuffer("?");
          params.forEach((key, value) {
            sb.write("$key" + "=" + "$value" + "&");
          });
          String paramStr = sb.toString();
          paramStr = paramStr.substring(0, paramStr.length - 1);
          url += paramStr;
        }
        response = await Dio().get(url);
      } else {
        if (params != null && params.isNotEmpty) {
          response = await Dio().post(url, data: params);
        } else {
          response = await Dio().post(url);
        }
      }

      statusCode = response.statusCode;
      
      IanResponse res = IanResponse();
      res.apiType = type;
      res.code = statusCode;
      //处理错误部分
      if (statusCode < 0) {
        errorMsg = "网络请求错误,状态码:" + statusCode.toString();
        res.message = errorMsg;
        callBack(res);
        return;
      }

      if (callBack != null) {
        res.result_json = response.data;
        callBack(res);
      
      }
    } catch (exception) {
       IanResponse res = IanResponse();
        res.message = exception.toString();
        res.code = -1;
        callBack(res);
    }
  }

  //处理异常
  static void _handError(Function errorCallback, String errorMsg) {
    if (errorCallback != null) {
      errorCallback(errorMsg);
    }
    print("<net> errorMsg :" + errorMsg);
  }
}
 
