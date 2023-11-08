import 'package:fieldofficerstaskers/utilits/Common_Colors.dart';
import 'package:fieldofficerstaskers/utilits/Text_Style.dart';
import 'package:flutter/material.dart';
import 'Common_Button.dart';
import 'Image_Path.dart';

//Inbox POPUP
Widget Inbox_Pop_Up(BuildContext context) {
  return AlertDialog(
    surfaceTintColor: white1,
    content:Container(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
              child: Text('Booking Accepted',style: profileT,)),
          Container(
            margin: EdgeInsets.only(top: 12,bottom: 20),
              child: Text('Booking ID: xxxx \n Admin ID : xxxx \n Accepted by Prasanna Admin',style: inboxT,textAlign: TextAlign.center)),
          Text("All Your Task details, queries managed by Admin, Professional staff assigned shortly.",style: inboxT,textAlign: TextAlign.center,),
          Container(
            margin: EdgeInsets.only(top: 40,bottom: 30),
              child: CommonElevatedButton(context, "Done", () {
              Navigator.pop(context);

              })),

        ],
      ),
    ),
  );
}

//CONFIRM BOOKING
Widget Confirm_Pop(BuildContext context,{required String Title,required String content,required void Function()? onTap}) {
  return AlertDialog(
    surfaceTintColor: white1,
    content:Container(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
              child: ImgPathSvg('taskerslogo.svg')),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: Text('confirm ${Title}',style: profileT,)),
          Container(
              margin: EdgeInsets.only(top: 10,),
              child: Text('Are you sure you want to confirm the ${content}',style: inboxT,textAlign: TextAlign.center)),
          Container(
              margin: EdgeInsets.only(top: 40,bottom: 30),
              child: Row(
                children: [
                  Container(
                    width:MediaQuery.of(context).size.width/3.3,
                    child: CommonElevatedButton(context, "Cancel", () {
                      Navigator.pop(context);
                    }),
                  ),
                   const Spacer(),
                  Container(
                    width:MediaQuery.of(context).size.width/3.3,
                    child: CommonElevatedButton(context, "Book", onTap),
                  )
                ],
              )
          ),

        ],
      ),
    ),
  );
}

//REJECTION SUCESSFULLY
Widget Rejection_Sucessfully_PopUp(BuildContext context) {
  return AlertDialog(
    surfaceTintColor: white1,
    content:Container(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 50),
              child: ImgPathSvg('taskerslogo.svg')),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: Text('Rejection Successful',style: profileT,)),
          Container(
              margin: EdgeInsets.only(top: 15,bottom: 30),
              child: Text('Thank you for choosing Taskers,',style: inboxT,)),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: CommonElevatedButton(context, "Back To Home", () {
              Navigator.pop(context);
            }),
          ),
        ],
      ),
    ),
  );
}

//BOOKING SUCESSFULLY
Widget Booking_Sucessfully_Pop(BuildContext context) {
  return AlertDialog(
    surfaceTintColor: white1,
    content:Container(
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 50),
              child: ImgPathSvg('taskerslogo.svg')),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: Text('Booking Successful',style: profileT,)),
          Container(
              margin: EdgeInsets.only(top: 15,bottom: 30),
              child: Text('Thank you for choosing Taskers,',style: inboxT,)),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: CommonElevatedButton(context, "Back To Home", () {
            }),
          ),
        ],
      ),
    ),
  );
}
