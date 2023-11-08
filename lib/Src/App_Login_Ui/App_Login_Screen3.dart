import 'package:fieldofficerstaskers/Common_Widgets/Common_Button.dart';
import 'package:fieldofficerstaskers/Common_Widgets/Image_Path.dart';
import 'package:fieldofficerstaskers/utilits/Common_Colors.dart';
import 'package:fieldofficerstaskers/utilits/Text_Style.dart';
import 'package:flutter/material.dart';


class App_Login_Screen3 extends StatefulWidget {
  const App_Login_Screen3({super.key});

  @override
  State<App_Login_Screen3> createState() => _App_Login_Screen3State();
}

class _App_Login_Screen3State extends State<App_Login_Screen3> {
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
              child: ImgPathSvg('applogin3.svg')),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 20),
              child: ImgPathSvg('group3.svg')),
          //TASK TYPE
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Rapid Response in Emergencies',style: appLoginT,textAlign: TextAlign.center,)),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 10),
              child: Text('Help in emergencies. Taskers ensures your never alone in a crisis.',style: inboxT,
                textAlign: TextAlign.center,)),

          const Spacer(),
          //BUTTON
          Container(
              margin: EdgeInsets.only(bottom: 65,left: 20,right: 20),
              child: CommonElevatedButton(context, 'GIVE A TASK', () {
              }))
        ],
      ),
    );
  }

}
