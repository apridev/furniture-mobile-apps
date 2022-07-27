import 'package:flutter/material.dart';
import 'package:furniture_app/providers/product-provider.dart';
import 'package:furniture_app/template.dart';
import 'package:furniture_app/widgets/categories_tile.dart';
import 'package:furniture_app/widgets/product_tile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    List<FocusNode> _focusNodes = [
      FocusNode(),
    ];

    @override
    void initState() {
      _focusNodes.forEach((node) {
        node.addListener(() {
          setState(() {});
        });
      });
      super.initState();
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Modern Style \nFurniture',
                  style: blackFontStyle.copyWith(
                      fontSize: 20, fontWeight: bold, height: 1.5),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/icon_notification.png',
                      width: 24,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'We have wide range of Furniture',
              style: blackFontStyle2.copyWith(fontSize: 14, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.75,
              height: 50,
              child: TextField(
                focusNode: _focusNodes[0],
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.black12,
                style: const TextStyle(color: Colors.black),
                // obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: primaryColor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: iconNavbarColor)),
                    // prefixIcon: Icon(Icons.person),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search,
                        color: _focusNodes[0].hasFocus
                            ? primaryColor
                            : iconNavbarColor)),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: backgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.list)),
            ),
          ],
        ),
      );
    }

    Widget newArrival() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'New Arrivals',
              style:
                  blackFontStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_forward_rounded))
          ],
        ),
      );
    }

    Widget productNewArrival() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children:[
                ProductTile(),
                ProductTile(),
                ProductTile(),
                ProductTile(),
                ProductTile(),
              ]
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        child: ScrollConfiguration(
          behavior: ScrollBehavior().copyWith(overscroll: false),
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    search(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 20, right: 8, bottom: 20),
                              height: 30,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'All',
                                  style: backgroundFontStyle.copyWith(
                                      fontSize: 12, fontWeight: medium),
                                ),
                              ),
                            ),
                            CategoriesTile(name: 'Tables'),
                            CategoriesTile(name: 'Sofa'),
                            CategoriesTile(name: 'Chairs'),
                            CategoriesTile(name: 'Cupboard'),
                            CategoriesTile(name: 'Bed'),
                            CategoriesTile(name: 'Bathtub'),
                          ],
                        ),
                      ),
                    ),
                    newArrival(),
                    productNewArrival()
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
