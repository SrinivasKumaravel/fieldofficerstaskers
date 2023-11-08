import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


import '../utilits/ApiService.dart';
import '../utilits/Common_Colors.dart';
import '../utilits/Text_Style.dart';
import 'Image_Path.dart';



// ELEVATED BUTTON
Widget CommonElevatedButton(
  BuildContext context,
  String titleName,
  void Function()? onPress,
){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: blue3,
      minimumSize: Size(double.infinity, 50),
      elevation: 9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    onPressed: onPress,
    child: Text(
      titleName,
      style: ButtonT,
    ),
  );
}


//FLOATING BUTTON
Widget Floating_Button(context) {
  return SpeedDial(
    curve: Curves.bounceInOut,

   animatedIconTheme: IconThemeData(color: Black),
    animatedIcon: AnimatedIcons.menu_close,
    backgroundColor: white1,
    shape: CircleBorder(),
    children: [
      SpeedDialChild(
          labelBackgroundColor: grey4,
          shape: CircleBorder(),
          child: Icon(Icons.add_comment_rounded,color: Black,),
          onTap: () {
            },
          label: "Create a Task"),
      SpeedDialChild(
          labelBackgroundColor: grey4,
          shape: CircleBorder(),
          child: Icon(Icons.chat,color: Black,),
          onTap: () {
          },
          label: "Chat for Help"),
    ],
  );
}





//CALL NOW BOTTON
Widget callNow_Button(
    BuildContext context,
    String titleName,

{required void Function()? onPress,required Color? backgroundColor}
    ) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      minimumSize: Size(double.infinity, 30),
      // elevation: 9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    onPressed: onPress,
    child: Text(
      titleName,
      style: ButtonT1,
    ),
  );
}

//CHAT BUTTON
Widget Chat_Button(
    BuildContext context,
    void Function()? onPress,
    ){
  return InkWell(
    onTap: onPress,
    child: Container(
      height: 35,width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: blue3
      ),
      child: Center(child: ImgPathSvg('Send.svg'))
    ),
  );
}