import 'package:flutter/material.dart';
import 'package:furniture_app/providers/is-hidden-password.dart';
import 'package:furniture_app/template.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
   final isHiddenPassword = Provider.of<HiddenPasswordProvider>(context, listen: false);
    Widget imgLogin() {
      return Container(
        child: Center(
          child: Container(
              child: Image.asset('assets/img/img_login.png')),
        ),
      );
    }

    Widget titleLogin() {
      return Container(
        margin: EdgeInsets.only(
          top: 18
        ),
        child: Text(
          'Login',
          style: blackFontStyle.copyWith(fontSize: 24, fontWeight: bold),
        ),
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

    Widget formPassword(){
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
                        hintText: "Password",
                        hintStyle: blackFontStyle2.copyWith(
                          fontSize: 14,
                        ),
                        suffixIcon: GestureDetector(
                          onTap:
                            isHiddenPassword.isHiddenPassword,
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

    Widget forgetPassword(){
      return GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/forget-password');
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 16
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Forget Password?', style: blackFontStyle2.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
                decoration: TextDecoration.underline
              ),),
            ],
          ),
        ),
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
            Navigator.pushNamed(context, '/verification-page');
          }, 
          child: Text('Login', style: backgroundFontStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold
          ),)
        ),
      );
    }

    Widget or(){
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        child: Image.asset('assets/img/or.png'),
      );
    }

    Widget accountGoogle(){
      return Container(
        margin: EdgeInsets.only(
          top: 30
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: blackColor2
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/icon_google.png', width: 24,),
            SizedBox(
              width: 12,
            ),
            Text('Google', style: blackFontStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: GestureDetector(
          onTap: () {FocusManager.instance.primaryFocus?.unfocus();},
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20, 
                  left: 20, 
                  right: 20
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    imgLogin(),
                    titleLogin(),
                    formUsername(),
                    formPassword(),
                    forgetPassword(),
                    btnNav(),
                    or(),
                    accountGoogle()
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
            Text("Don’t have an account?", style: blackFontStyle.copyWith(
              fontSize: 14, fontWeight: medium
            ),),
            SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/registrasi-page');
              },
              child: Text('Regitrasi', style: primaryFontStyle.copyWith(
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
