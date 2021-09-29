import 'package:example_radio_app/Pages/HomePage.dart';
import 'package:example_radio_app/Pages/PodcastPage.dart';
import 'package:example_radio_app/Pages/RadioPage.dart';
import 'package:example_radio_app/Pages/SettingsPage.dart';
import 'package:example_radio_app/Pages/StreamingPage.dart';
import 'package:example_radio_app/Utility/Colors.dart';
import 'package:example_radio_app/Utility/Util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPageView extends StatefulWidget {
  @override
  _MainPageViewState createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  PageController _pageController;
  int currentPageIndex = 1;

  List<Widget> pages = [
    HomePage(),
    StreamingPage(),
    RadioPage(),
    PodcastPage(),
    SettingsPage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.backgroundColor,
      body: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return pages[index];
          },
        ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: currentPageIndex == 2 ? AppDarkColors.fabSelectedBgColor : AppDarkColors.fabUnselectedBgColor,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset("assets/icon/streamIcon.png", color: currentPageIndex == 2 ? Colors.white : AppDarkColors.fabUnselectedIconColor,),
          ),
          onPressed: () {
            setState(() {
              currentPageIndex = 2;
              _pageController.jumpToPage(currentPageIndex);
            });
          },
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: AppDarkColors.bottomNavBarBgColor,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(context) * 30/380,
                vertical: getWidth(context) * 10/380,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPageIndex = 0;
                      _pageController.jumpToPage(currentPageIndex);
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.home, color: currentPageIndex == 0 ? AppDarkColors.selectedNavBarItemColor : AppDarkColors.unselectedNavBarItemColor,),
                      Text("Home", style: TextStyle(color: currentPageIndex == 0 ? AppDarkColors.selectedNavBarItemColor : AppDarkColors.unselectedNavBarItemColor),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPageIndex = 1;
                      _pageController.jumpToPage(currentPageIndex);
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.stream, color: currentPageIndex == 1 ? AppDarkColors.selectedNavBarItemColor : AppDarkColors.unselectedNavBarItemColor,),
                      Text("Streaming", style: TextStyle(color: currentPageIndex == 1 ? AppDarkColors.selectedNavBarItemColor : AppDarkColors.unselectedNavBarItemColor),)
                    ],
                  ),
                ),
                SizedBox(width: 56,), // FLoatingActionBar default width 56
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPageIndex = 3;
                      _pageController.jumpToPage(currentPageIndex);
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.podcast, color: currentPageIndex == 3 ? AppDarkColors.selectedNavBarItemColor : AppDarkColors.unselectedNavBarItemColor,),
                      Text("Podcast", style: TextStyle(color: currentPageIndex == 3 ? AppDarkColors.selectedNavBarItemColor : AppDarkColors.unselectedNavBarItemColor),)
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPageIndex = 4;
                      _pageController.jumpToPage(currentPageIndex);
                    });
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.cog, color: currentPageIndex == 4 ? AppDarkColors.selectedNavBarItemColor : AppDarkColors.unselectedNavBarItemColor,),
                      Text("Settings", style: TextStyle(color: currentPageIndex == 4 ? AppDarkColors.selectedNavBarItemColor : AppDarkColors.unselectedNavBarItemColor),)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
