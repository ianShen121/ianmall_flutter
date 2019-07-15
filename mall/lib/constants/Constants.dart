import 'package:event_bus/event_bus.dart';

class Constant{
  static final String host = "http://39.106.181.176:8082";


  static final EventBus eventBus = new EventBus();

  
}

enum ApiType{
  home,login,goodsList,regist
}




