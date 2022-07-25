import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/providers/is-hidden-password.dart';
import 'package:furniture_app/template.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final isHiddenPassword = Provider.of<HiddenPasswordProvider>(context);
    Widget imgRegister(){
      return Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20
              ),
              child: Center(
                child: Image.asset(
                  'assets/img/img_register.png', width: 230,
                ),
              )
              )
          ],
        ),
      );
    }

    Widget tittleRegister(){
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        child: Text('Register', style: blackFontStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold
        ),),
      );
    }

    Widget formUsername(){
      return Container(
        child: Container(
              margin: EdgeInsets.only(top: 30),
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

    Widget fullName(){
      return Container(
        child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Image.asset('assets/icons/icon_user.png', width: 26),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.name,
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
                        hintText: "Full Name",
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

    Widget phoneNumber(){
      return Container(
        child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Image.asset('assets/icons/icon_phone.png', width: 26),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
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
                        hintText: "Phone Numner",
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

    Widget password(){
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
                      keyboardType: TextInputType.visiblePassword,
                      textAlign: TextAlign.start,
                      cursorColor: Colors.black12,
                      obscureText: isHiddenPassword.ishiddenPassword,
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
                        hintText: "Password",
                        hintStyle: blackFontStyle2.copyWith(
                          fontSize: 14,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: isHiddenPassword.isHiddenPassword,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             isHiddenPassword.ishiddenPassword == true ? Image.asset('assets/icons/icon_hidden_password.png', width: 24,) : Image.asset('assets/icons/icon_hidden_password_true.png', width: 24,),
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

    Widget privacyPolicy(){
      return Container(
        margin: EdgeInsets.only(
          top: 20
        ),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              height: 2
            ),
            children: <TextSpan> [
              TextSpan(
                style: blackFontStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
                text: 'By signing up, you’re agree to '
              ),
              TextSpan(
                style: primaryFontStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
                text: "Terms & Conditions ",
                recognizer: TapGestureRecognizer()..onTap = (){
                  // kosong
                }
              ),
              TextSpan(
                style: blackFontStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                ),
                text: "and "
              ),
              TextSpan(
                style: primaryFontStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
                text: "Privacy Policy.",
                recognizer: TapGestureRecognizer()..onTap = (){
                  // kosong
                }
              ),
            ]
          ),
        )
      );
    }

    Widget btnNav(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
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
          child: Text('Register', style: backgroundFontStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold
          ),)
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: GestureDetector(
          onTap: (){
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imgRegister(),
                    tittleRegister(),
                    formUsername(),
                    fullName(),
                    phoneNumber(),
                    password(),
                    privacyPolicy(),
                    btnNav()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          top: 24,
          bottom: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Joined us before?", style: blackFontStyle.copyWith(
              fontSize: 14, fontWeight: medium
            ),),
            SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/');
              },
              child: Text('Login', style: primaryFontStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold
              ),),
            )
          ],
        ),
      ),
      
    );
  }
}