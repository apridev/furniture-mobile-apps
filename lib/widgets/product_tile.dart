import 'package:flutter/material.dart';
import 'package:furniture_app/template.dart';

class ProductTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10
      ),
      child: Container(
                width: 145,
                height: 200,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 1,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/product-1.png'),
                          fit: BoxFit.cover
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 4,
                        right: 4
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 8,
                          ),
                          Text('Hipster Green Long Sofa...', style: blackFontStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                            overflow: TextOverflow.ellipsis
                          ),),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Sofa', style: iconNavbarStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold
                          ),),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: yellowStar, size: 18,),
                             const SizedBox(
                                width: 4,
                              ),
                              Text('4.4', style: blackFontStyle.copyWith(
                                fontSize: 10,
                                fontWeight: semiBold
                              ),),
                             const SizedBox(
                                width: 4,
                              ),
                              Text('(1k reviews', style: blackFontStyle2.copyWith(
                                fontSize: 10,
                                fontWeight: semiBold
                              ),),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text('\$399', style: primaryFontStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                            letterSpacing: 0.5
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
    );
  }
}