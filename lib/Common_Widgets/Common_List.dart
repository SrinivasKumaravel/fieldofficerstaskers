import 'package:fieldofficerstaskers/utilits/Common_Colors.dart';
import 'package:fieldofficerstaskers/utilits/Text_Style.dart';
import 'package:flutter/material.dart';

import 'Image_Path.dart';


//TASK CATEGORY
Widget Task_Category({required String toolImg}) {
  return Container(
    height: 60,
    width: 60,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(12), color: blue3),
    child: Center(child: ImgPathSvg(toolImg)),
  );
}

//OUR TASK
Widget Our_Task({required String TaskImg,required String TaskDetail,required String TaskType,required String RatingCount}) {
  return Card(
    elevation: 5,
    child: Stack(
      children: [
        Container(
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: white6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(TaskImg),
                        fit: BoxFit.cover)),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
                  child: Text(
                    TaskDetail,
                    style: cardT,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
              service_Type(
                isLarged: false,
                ServiceTtpe: TaskType,
                Rating: RatingCount,
                Count: 0,
              ),
            ],
          ),
        ),
        //TAGS
        Positioned(
          top: 7,
          left: 10,
          child: Container(
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: blue3),
            child: Center(
                child: Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
              child: Text(
                'CAR WASH',
                style: TagsT,
              ),
            )),
          ),
        ),
        //FAVOURITE
        Positioned(
          top: 7,
          right: 10,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: white1,
            child: Icon(
              Icons.favorite_border,
              color: yellow1,
            ),
          ),
        ),
        //PRICE TAG
        Positioned(
          top: 135,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 2, color: white5),
                color: blue3),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 9, right: 9, top: 3, bottom: 3),
              child: Text(
                '₹ 120',
                style: priceT,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

//CATEGORY LIST SCREEN
Widget Category_Tab_List(context,
    {required String CardImg,
    required String TaskDetail,
    required String ServiceType,
    required String Rating,
    required int startCount,
      required bool isTagUsed,
      required String isBookingTag
    }) {
  Color containerColor;
  switch (isBookingTag) {
    case "Completed":
      containerColor = green6;
      break;
    case "Rejected":
      containerColor = brown1;
      break;
    case "Failed":
      containerColor = red5;
      break;
    case "Reschdule":
      containerColor = blue1;
      break;
    case "Pending":
      containerColor = orange1;
      break;
    default:
      containerColor = Colors.black;
      break;
  }
  return Card(
    elevation: 5,
    child: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: white6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(CardImg), fit: BoxFit.cover)),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: 15, bottom: 5, left: 15, right: 15),
                  child: Text(
                    TaskDetail,
                    style: cardDetailT,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
              service_Type(
                isLarged: true,
                ServiceTtpe: ServiceType,
                Rating: Rating,
                Count: startCount,
              ),
            ],
          ),
        ),
        //FAVOURITE
        Positioned(
          top: 7,
          right: 10,
          child: CircleAvatar(
            radius: 15,
            backgroundColor: white1,
            child: Icon(
              Icons.favorite_border,
              color: yellow1,
            ),
          ),
        ),
        //PRICE TAG  & BOOKING TAG
        isTagUsed==true?
        Positioned(
          top: 145,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: containerColor),
            child: Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5,left: 10,right: 10),
              child: Text(isBookingTag,style: TagsT),
            ),
          ),
        ):
        Positioned(
          top: 140,
          right: 10,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 5, color: white5),
                color: blue3),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 9, right: 9, top: 3, bottom: 3),
              child: Text(
                '₹ 120',
                style: priceT2,
              ),
            ),
          ),
        ),


      ],
    ),
  );
}

//NOTIFICATION LIST
Widget Notification_List(context, {required String NotificationType}) {
  Color containerColor;
  String? ImgPath;

  switch (NotificationType) {
    case "Rewards":
      containerColor = blue6;
      ImgPath = 'award.svg';
      break;
    case "Payment Notification":
      containerColor = violet1;
      ImgPath = 'creditcard1.svg';
      break;
    case "Cashback":
      containerColor = blue6;
      ImgPath = 'discount.svg';
      break;
    case "Pending":
      containerColor = orange1;
      ImgPath = 'creditcard2.svg';
      break;
    default:
      containerColor = Colors.black;
      break;
  }
  return Container(
    height: 55,
    width: MediaQuery.of(context).size.width,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: containerColor),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ImgPathSvg("${ImgPath}"),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  NotificationType,
                  style: notificationTitle,
                ),
                Text(
                  'Loyal user rewards!😘',
                  style: ratingT,
                )
              ],
            ),
            Spacer(),
            Text(
              'MAR 21',
              style: ratingT,
            ),
          ],
        ),
      ),
    ),
  );
}

//INBOX LIST
Widget Inbox_List(context,
    {required String isStatus,
    required String bookingText,
    required String messageContent,
    required String Time}) {
  TextStyle? statusStyle;
  switch (isStatus) {
    case "Payment Pending":
      statusStyle = cardDetailT2;
      break;
    case "Payment Successful":
      statusStyle = cardDetailT3;
      break;
    default:
      break;
  }
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 10, left: 20, right: 20),
        child: Row(
          children: [
            //BOOKING TEXT
            Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Text(
                  bookingText,
                  style: cardDetailT,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
            const SizedBox(
              width: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width / 2.5,
                child: Text(
                  isStatus,
                  style: statusStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
            const Spacer(),
            Text(
              Time,
              style: timeT,
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
        child: Text(
          messageContent,
          style: inboxT,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      Divider(
        height: 1,
        color: white7,
      ),
    ],
  );
}


//DESCRIPTION IMAGES
Widget Description_Images(){
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(image: AssetImage('lib/assets/tv.png'),
      fit: BoxFit.cover)
    ),
  );
}

//REVIEW LIST
Widget Review_List(context,{required String ProfilePic,required String ProfileName,required String Date,
required int StarCount,required,required String count,required String Review }){
  return Container(
    margin: EdgeInsets.only(left: 20,right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 25,
          child: ImgPathPng(ProfilePic),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(ProfileName,style: Textfield_Style2,maxLines: 2,),
                  const SizedBox(width: 10,),
                  Text(Date,style: timeT,),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 80,
                    child: ListView.builder(
                      itemCount: StarCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return  Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: ImgPathSvg('star.svg'),
                        );
                      },),
                  ),
                  Text(count,style: ratingT,)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width/1.4,
                  child: Text(Review,style: inboxT,maxLines: 3,textAlign: TextAlign.start,))

            ],
          ),
        ),
      ],
    ),
  );
}