import 'package:fieldofficerstaskers/Common_Widgets/Common_Button.dart';
import 'package:fieldofficerstaskers/Common_Widgets/Image_Path.dart';
import 'package:fieldofficerstaskers/utilits/Common_Colors.dart';
import 'package:fieldofficerstaskers/utilits/Text_Style.dart';
import 'package:flutter/material.dart';
import 'App_Login_Screen2.dart';

class App_Login_Screen1 extends StatefulWidget {
  const App_Login_Screen1({super.key});

  @override
  State<App_Login_Screen1> createState() => _App_Login_Screen1State();
}

class _App_Login_Screen1State extends State<App_Login_Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
        appBar: AppBar(
          toolbarHeight: 5,
          backgroundColor: white1,
        ),
      body: _mainBody(),
    );
  }
  Widget _mainBody(){
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 30,bottom: 50),
              child: InkWell(
                onTap: (){
                },
                  child: Text('Skip>>',style: inboxT,))),
          //LOGO
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 25),
              child: ImgPathSvg('applogin1.svg')),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 20),
              child: ImgPathSvg('group1.svg')),
          //TASK TYPE
          Container(
            alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Doorstep Tasks Made Easy',style: appLoginT,)),
          Container(
            alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Get doorstep tasks done effortlessly. Book professionals to your home with Taskers.',style: inboxT,
              textAlign: TextAlign.center,)),

          const Spacer(),
          //BUTTON
          Container(
              margin: EdgeInsets.only(bottom: 65,left: 20,right: 20),
              child: CommonElevatedButton(context, 'NEXT', () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>App_Login_Screen2()));
              }))
        ],
      ),
    );
  }

}
