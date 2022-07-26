import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_app/template.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollBehavior().copyWith(overscroll: false),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: ListView(
            children: [
              Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                      ),
                      child: Text(
                        'Verification Account',
                        style: blackFontStyle.copyWith(
                            fontSize: 24, fontWeight: semiBold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Enter the verification code that\n we have sent to your email',
                    style: blackFontStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                    textAlign: TextAlign.center,
                  ),
                  Form(
                      child: Container(
                    margin: EdgeInsets.only(top: 24, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryFontStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryFontStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryFontStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            style: primaryFontStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: primaryColor),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/main-page');
                        },
                        child: Text(
                          'Continue',
                          style: backgroundFontStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "You don't get the code?",
                          style: blackFontStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: Column(
                                        children: [
                                          Image.asset(
                                            'assets/icons/icon_ufo.png',
                                            width: 40,
                                          ),
                                        ],
                                      ),
                                      content: Text(
                                        'Please Check your email again. If you haven’t loggend in, please click Resend again.',
                                        style: blackFontStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: semiBold,
                                            height: 1.5),
                                        textAlign: TextAlign.center,
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                style: ButtonStyle(
                                                  overlayColor:
                                                      MaterialStateProperty.all(
                                                          Colors.grey[100]),
                                                ),
                                                child: Container(
                                                    width: 100,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                        color: primaryColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                    child: Center(
                                                        child: Text(
                                                      'Ok',
                                                      style: backgroundFontStyle
                                                          .copyWith(
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  semiBold),
                                                    )))),
                                          ],
                                        )
                                      ],
                                    ));
                          },
                          child: Text(
                            'Resend',
                            style: primaryFontStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
