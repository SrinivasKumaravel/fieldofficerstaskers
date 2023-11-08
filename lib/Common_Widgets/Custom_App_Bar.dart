import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utilits/Common_Colors.dart';
import '../utilits/Text_Style.dart';
import 'Image_Path.dart';


class Custom_AppBar extends StatefulWidget implements PreferredSizeWidget {
  String? title;
  bool? isNav;
  bool? isBlue;
  List<Widget>? actions;
  Custom_AppBar({Key? key, required this.title,required this.actions,required this.isBlue,required this.isNav})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}
class _CustomAppBarState extends State<Custom_AppBar> {
  @override
  Widget build(BuildContext context) {
    return
      AppBar(
        primary: true,
        backgroundColor:widget.isBlue==true?blue3:white1,
        automaticallyImplyLeading: false,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.black, // Navigation bar
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark // Status bar
        ),

        leading: widget.isNav==true?InkWell(
          onTap: ()=>Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios,color: widget.isBlue==true?white1:blue3,)):null,
        centerTitle: true,
        actions:widget.actions,
        title: Text(widget.title.toString(),
          style:widget.isBlue==true?appTitle2:appTitle,
        ),

      );
  }
}

