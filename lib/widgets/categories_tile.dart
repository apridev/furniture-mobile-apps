import 'package:flutter/material.dart';
import 'package:furniture_app/template.dart';

class CategoriesTile extends StatelessWidget {

  String name;

  CategoriesTile({
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: 20,
          right: 8,
          bottom: 20
        ),
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(
            color: iconNavbarColor
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
          onPressed: (){},
          child: Text(name, style: blackFontStyle2.copyWith(
            fontSize: 12,
            fontWeight: medium
          ),),
        ),
      );
  }
}