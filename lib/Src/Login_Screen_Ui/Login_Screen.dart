import 'package:fieldofficerstaskers/Common_Widgets/Common_Button.dart';
import 'package:fieldofficerstaskers/Common_Widgets/Image_Path.dart';
import 'package:fieldofficerstaskers/Common_Widgets/Text_Form_Field.dart';
import 'package:fieldofficerstaskers/utilits/Common_Colors.dart';
import 'package:fieldofficerstaskers/utilits/Text_Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Login_Screen extends StatefulWidget {
   Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController _employeeId = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _password = "";
  bool _obscurePassword = true;

  //PASSWORD VISIBILITY FUNCTION
  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white1,
      appBar: AppBar(
        toolbarHeight: 5,
        backgroundColor: white1,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: _mainBody(),
            ),
          ),
        ),
      ),
    );
  }
  Widget _mainBody(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //REGISTER LOGO
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 80,bottom: 50),
            child: ImgPathSvg('registerLogo.svg')),

     Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(bottom: 20),
            child: Text("Log in",style: logintxt,)),

        //EMPLOYEE ID
        textFormField(
          // isEnabled: false,
            hintText: "Employee Id",
            keyboardtype: TextInputType.phone,
            Controller: _employeeId,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly],
            onChanged: null,
            validating:(value){
              if (value!.isEmpty) {
                return 'Please enter a valid Employee Id';
              } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                return 'Please enter a valid Employee Id';
              }
              return null;
            }
        ),
        const SizedBox(height: 25,),
        //PASSWORD
        textFieldPassword(
          Controller: _passwordController,
          obscure: _obscurePassword,
          onPressed:_togglePasswordVisibility,
          hintText: "Password",
          keyboardtype: TextInputType.text,
          onChanged: (value) {
            setState(() {
              _password = value;
            });
          },
          validating:(value) {
            if (value!.isEmpty) {
              return 'Please enter a password';
            } else if (value.length < 6) {
              return 'Password must be at least 6 characters long';
            }
            return null;
          },
        ),

        const Spacer(),
        //BUTTON
        Container(
            margin: EdgeInsets.only(bottom: 80,left: 20,right: 20),
            child: CommonElevatedButton(context, 'Get Otp', () {
              if(_formKey.currentState!.validate()){
              }
            }))
      ],
    );
  }
}
