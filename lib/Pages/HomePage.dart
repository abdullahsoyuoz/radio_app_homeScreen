import 'package:example_radio_app/Utility/Colors.dart';
import 'package:example_radio_app/Utility/FakeData.dart';
import 'package:example_radio_app/Utility/Util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppDarkColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppDarkColors.backgroundColor,
        elevation: 0,
        title: Text(
          "Radio FM Zepita",
          style: TextStyle(color: AppDarkColors.appBarTitleColor, fontSize: 26),
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: getWidth(context) * 20 / 300),
          child: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.bars,
                color: AppDarkColors.appBarIconsColor,
              ),
              onPressed: () {}),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: getWidth(context) * 20 / 300),
            child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.globe,
                  color: AppDarkColors.appBarIconsColor,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: getWidth(context),
        padding: EdgeInsets.only(top: getWidth(context) * 10 / 300),
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: [
            // NEWS TODAY
            Padding(
              padding: EdgeInsets.only(left: getWidth(context) * 25 / 300),
              child: Text(
                "News Today",
                style: TextStyle(
                    color: AppDarkColors.widgetsTopLeftTitle, fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: getWidth(context) * 15 / 300),
                child: Container(
                  width: getWidth(context),
                  height: getWidth(context) * 180 / 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding:
                        EdgeInsets.only(left: getWidth(context) * 20 / 300),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        width: getWidth(context) * 250 / 300,
                        height: getWidth(context) * 170 / 300,
                        margin: EdgeInsets.only(
                          right: getWidth(context) * 20 / 300,
                          top: getWidth(context) * 5/300,
                          bottom: getWidth(context) * 5/300,
                        ),
                        decoration: BoxDecoration(
                          color: AppDarkColors.primary,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: AppDarkColors.shadow, blurRadius: 3, spreadRadius: 2)]
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20)),
                              child: Container(
                                width: getWidth(context) * 250 / 300,
                                height: getWidth(context) * 110 / 300,
                                color: AppDarkColors.primary,
                                child: Image.network(
                                  fakeDataFakeNews,
                                  width: getWidth(context) * 250 / 300,
                                  height: getWidth(context) * 110 / 300,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: getWidth(context) * 10 / 300,
                                vertical: getWidth(context) * 10 / 300,
                              ),
                              child: Text(
                                fakeDataLoremIpsum,
                                style: TextStyle(
                                    color: AppDarkColors.newsContextColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                              ),
                            ))
                          ],
                        ),
                      );
                    },
                  ),
                )),
            // RECENT PLAYED
            Padding(
              padding: EdgeInsets.only(
                  top: getWidth(context) * 15 / 300,
                  left: getWidth(context) * 25 / 300),
              child: Text(
                "Recent Played",
                style: TextStyle(color: AppDarkColors.widgetsTopLeftTitle, fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: getWidth(context) * 15 / 300),
                child: Container(
                  width: getWidth(context),
                  height: getWidth(context) * 120 / 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding:
                        EdgeInsets.only(left: getWidth(context) * 20 / 300),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        width: getWidth(context) * 110 / 300,
                        height: getWidth(context) * 110 / 300,
                        margin: EdgeInsets.only(
                          top: getWidth(context) * 5 / 300,
                          bottom: getWidth(context) * 5 / 300,
                          right: getWidth(context) * 20 / 300,
                        ),
                        decoration: BoxDecoration(
                          color: AppDarkColors.primary,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: AppDarkColors.shadow, blurRadius: 3, spreadRadius: 2)]
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: getWidth(context) * 110 / 300,
                                height: getWidth(context) * 110 / 300,
                                child: Opacity(
                                    opacity: 0.75,
                                    child:
                                        Image.network(fakeDataFakeMusicCover,
                                          width: getWidth(context) * 110 / 300,
                                          height: getWidth(context) * 110 / 300,
                                          fit: BoxFit.fitWidth,
                                        )),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Pain\nRyan Jones",
                                  style: TextStyle(
                                      color: AppDarkColors.recentPlayedTextColor, fontSize: 16),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )),
            // SOCIAL MEDIA
            Padding(
              padding: EdgeInsets.only(
                  top: getWidth(context) * 15 / 300,
                  left: getWidth(context) * 25 / 300),
              child: Text(
                "Social Media",
                style: TextStyle(color: AppDarkColors.widgetsTopLeftTitle, fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: getWidth(context) * 15 / 300,
                  bottom: getWidth(context) * 30 / 300,
                ),
                child: Container(
                  width: getWidth(context),
                  height: getWidth(context) * 55 / 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding:
                        EdgeInsets.only(left: getWidth(context) * 20 / 300),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        width: getWidth(context) * 120 / 300,
                        height: getWidth(context) * 45 / 300,
                        margin: EdgeInsets.only(
                          top: getWidth(context) * 5 / 300,
                          bottom: getWidth(context) * 5 / 300,
                            right: getWidth(context) * 20 / 300,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [BoxShadow(color: AppDarkColors.shadow, blurRadius: 3, spreadRadius: 2)],
                            image: DecorationImage(
                                image: NetworkImage(fakeDataAbstractBackground),
                                fit: BoxFit.fitWidth,
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: AppDarkColors.socialMediaTextColor, fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
