import 'package:flutter/material.dart';
import 'package:furniture_app/providers/is-hidden-password.dart';
import 'package:furniture_app/template.dart';
import 'package:provider/provider.dart';

class ResetPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final isHiddenPassword = Provider.of<HiddenPasswordProvider>(context);

    Widget imgResetPassword(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          children: [
            Center(child: Image.asset('assets/img/img_reset_password.png', width: 250,))
          ],
        ),
      );
    }

    Widget titleResetPassword(){
      return Container(
        margin: EdgeInsets.only(
          top: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Reset \nPassword', style: blackFontStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
              height: 1.5
            ),),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      );
    }

    Widget formResetPassword(){
      return Container(
        child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Image.asset('assets/icons/icon_password.png', width: 26),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: isHiddenPassword.ishiddenPassword,
                      keyboardType: TextInputType.visiblePassword,
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
                        hintText: "Enter Your New Password",
                        hintStyle: blackFontStyle2.copyWith(
                          fontSize: 14,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: isHiddenPassword.isHiddenPassword,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            isHiddenPassword.ishiddenPassword == true ? Image.asset('assets/icons/icon_hidden_password.png', width: 28,) : Image.asset('assets/icons/icon_hidden_password_true.png', width: 28,),
                            ],
                          ),
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
      );
    }

    Widget formConfirmResetPassword(){
      return Container(
        child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Image.asset('assets/icons/icon_password.png', width: 26),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: isHiddenPassword.ishiddenPassword2,
                      keyboardType: TextInputType.visiblePassword,
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
                        hintText: "Confirm Your New Password",
                        hintStyle: blackFontStyle2.copyWith(
                          fontSize: 14,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: isHiddenPassword.isHiddenPassword2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            isHiddenPassword.ishiddenPassword2 == true ? Image.asset('assets/icons/icon_hidden_password.png', width: 28,) : Image.asset('assets/icons/icon_hidden_password_true.png', width: 28,),
                            ],
                          ),
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
      );
    }

    Widget btnNav(){
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
            
          }, 
          child: Text('Reset Password', style: backgroundFontStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold
          ),)
        ),
      );
    }

    return ScrollConfiguration(
      behavior: ScrollBehavior().copyWith(overscroll: false),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: GestureDetector(
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imgResetPassword(),
                    titleResetPassword(),
                    formResetPassword(),
                    formConfirmResetPassword(),
                    btnNav()
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}