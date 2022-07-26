import 'package:flutter/material.dart';
import 'package:furniture_app/template.dart';

class ForgetPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget imgForgetPassword(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/img/img_forget_password.png', width: 200,))
          ],
        ),
      );
    }

    Widget titleForgetPassword(){
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forget \nPassword', style: blackFontStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
              height: 1.5
            ),),
            SizedBox(
              height: 15,
            ),
            Text('Don’t worry! It happens. Please enter the address associeted with your account.', style: blackFontStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
              height: 1.8
            ),)
          ],
        ),
      );
    }

    Widget emailAddress(){
      return Container(
        child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Image.asset('assets/icons/icon_username.png', width: 26),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.start,
                      cursorColor: Colors.black12,
                      style: blackFontStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: blackColor2),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: blackColor2),
                        ),
                        // prefixIcon: Icon(Icons.person),
                        hintText: "Email/Username",
                        hintStyle: blackFontStyle2.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      );
    }

    Widget btnNavbar(){
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextButton(
          onPressed: (){
            // Alihkan dahulu nofification melalui Gmail
            // ! ini hanya sementara
            Navigator.pushNamed(context, '/reset-password');
          }, 
          child: Text('Send', style: backgroundFontStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold
          ),)
        ),
      );
    }

    return ScrollConfiguration(
      behavior: ScrollBehavior().copyWith(
        overscroll: false
      ),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: GestureDetector(
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20, right: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imgForgetPassword(),
                    titleForgetPassword(),
                    emailAddress(),
                    btnNavbar()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}