
class BaseModel{

}


class Home_model extends BaseModel{
  List<Banner> bannerList;
  List<HomeAd> adList;
  List<Channel> channelList;
  List<GoodList> goodList;


  Home_model.fromJson(Map<String,dynamic> json){

    List banner = json["banner"] ?? [];
    List ad = json["xdadtaskList"] ?? [];
    List channel = json["channel"] ?? [];
    List goods = json["goodsList"] ?? [];

    bannerList = banner.map((b){
    Map<String,dynamic> map = b;
    return Banner.fromJson(map);
    }).toList();


    
    adList = ad.map((a)=>HomeAd.fromJson(a)).toList();
    channelList = channel.map((c)=>Channel.fromJson(c)).toList();
    goodList = goods.map((g)=>GoodList.fromJson(g)).toList();

  }



  



}

/*"channel": [
      {
        "id": 1005000,
        "name": "居家",
        "iconUrl": "http://yanxuan.nosdn.127.net/a45c2c262a476fea0b9fc684fed91ef5.png"
      } */

class Channel{
  int id;
  String name;
  String iconUrl;

  Channel.fromJson(Map json){
    this.id = json["id"];
    this.name = json["name"];
    this.iconUrl = json["iconUrl"];
  }
}

/**
 *  "monthlySales": 0,
        "id": 1043005,
        "name": "日式记忆绵坐垫",
        "brief": "活性炭记忆绵，缓解压力",
        "picUrl": "http://yanxuan.nosdn.127.net/2a95b16f5b147cab4845641bee738a2e.png",
        "isNew": false,
        "isHot": false,
        "counterPrice": 79,
        "retailPrice": 59
 * 
 */
class GoodList{
  int id;
  String name;
  String brief;
  String picUrl;
  bool isNew;
  bool isHot;
  double counterPrice;
  double retailPrice;

  GoodList.fromJson(Map json){
    this.id = json["id"];
    this.name = json["name"];
    this.brief = json["brief"];
    this.isNew = json["isNew"];
    this.isHot = json["isHot"];
    this.counterPrice = json["counterPrice"];
    this.retailPrice = json["retailPrice"];
  }

}

/*
  "id": 1,
        "name": "合作 谁是你的菜",
        "link": "",
        "url": "http://yanxuan.nosdn.127.net/65091eebc48899298171c2eb6696fe27.jpg",
        "position": 1,
        "content": "合作 谁是你的菜",
        "enabled": true,
        "addTime": "2018-02-01 00:00:00",
        "updateTime": "2018-02-01 00:00:00",
        "deleted": false
*/
class Banner{
  int id;
  String name;
  String link;
  String url;
  int position;
  String content;
  bool enabled;
  String addTime;
  String updateTime;
  bool deleted;

  Banner.fromJson(Map json){
    id = json["id"];
    name = json["name"];
    link = json["link"];
    url = json[url];
    position = json["position"];
    content = json["content"];
    enabled = json["enabled"];
    addTime = json["addTime"];
    updateTime = json["updateTime"];
    deleted = json["deleted"];
  }
}


/** 
 * xdadtaskList
 *       "id": 2,
        "topic": "首页推荐",
        "url": "https://xdmall-1254138456.cos.ap-chengdu.myqcloud.com/fa69sh9vo3jqtnv9e612.png",
        "top": false,
        "enabled": true,
        "promotion": false
      },
*/

class HomeAd{
  int id;
  String topic;
  String url;
  bool top;
  bool enabled;
  bool promotion;

  HomeAd.fromJson(Map json){
    id = json["id"];
    topic = json["topic"];
    url = json["url"];
    top = json["top"];
    enabled = json["enabled"];
    promotion = json["promotion"];

  }
}