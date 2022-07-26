import 'package:flutter/material.dart';
import 'package:furniture_app/home/history-page.dart';
import 'package:furniture_app/home/home-page.dart';
import 'package:furniture_app/home/profile-page.dart';
import 'package:furniture_app/home/search-page.dart';
import 'package:furniture_app/template.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    Widget cartButtom(){
      return FloatingActionButton(
        onPressed: (){},
        backgroundColor: primaryColor,
        child: Image.asset('assets/icons/icon_cart_white.png', width: 26,),
      );
    }

    Widget customButtomNav(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value){
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: Color(0xffFFFEFE),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: currentIndex == 0 ? Image.asset(
                  'assets/icons/icon_home_active.png', width: 24) : Image.asset(
                  'assets/icons/icon_home.png', width: 24),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    right: 50
                  ),
                  child: Image.asset(
                    'assets/icons/icon_search.png', width: 24,
                    color: currentIndex == 1 ? primaryColor : iconNavbarColor,
                  ),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    left: 50
                  ),
                  child: currentIndex == 2 ? Image.asset(
                    'assets/icons/icon_history_active.png', width: 24) : Image.asset(
                    'assets/icons/icon_history.png', width: 24),
                ),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/icon_profile.png', width: 24,
                  color: currentIndex == 3 ? primaryColor : iconNavbarColor,
                ),
                label: ''
              ),
            ]
          ),
        ),
      );
    }

    Widget body(){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return SearchPage();
          break;
        case 2:
          return HistoryPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
        return HomePage();
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      floatingActionButton: cartButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtomNav(),
      body: body(),
    );
  }
}