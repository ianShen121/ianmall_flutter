import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class HomePage extends StatefulWidget{

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _HomePage();
    }
}

class _HomePage extends State{

  Widget _swiperBuilder(BuildContext context,int index) {
    return Image.network("https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1166738043,900156344&fm=26&gp=0.jpg",fit:BoxFit.fill);
  }


  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          
          child: Swiper(
            itemCount: 3,
            pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white,
              )
            ),
             itemBuilder: _swiperBuilder,
        
             control: new SwiperControl(),
             scrollDirection: Axis.horizontal,
              autoplay: true,
             onTap: (index) => print('点击了第$index个'),
        )
        ),
      );
    }
}
