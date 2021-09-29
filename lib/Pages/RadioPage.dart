import 'package:example_radio_app/Utility/Colors.dart';
import 'package:example_radio_app/Utility/Util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  double sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: getWidth(context),
      color: AppDarkColors.backgroundColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: getWidth(context),
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.height * 300/635) + getWidth(context) * 20/300,
                bottom: getWidth(context) * 20/300,
                left: getWidth(context) * 20/300,
                right: getWidth(context) * 20/300,
              ),
              decoration: BoxDecoration(color: AppDarkColors.backgroundColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Duo Encantos", style: TextStyle(color: AppDarkColors.title, fontSize: 18, fontWeight: FontWeight.w700),),
                            Text("Maldito Licor", style: TextStyle(color: AppDarkColors.titleDark, fontSize: 18, fontWeight: FontWeight.w700),),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppDarkColors.liveOutherAreaBg,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              CircleAvatar(radius: 8, backgroundColor: AppDarkColors.red,),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Text("LIVE", style: TextStyle(color: AppDarkColors.red, fontSize: 18),),
                              ),
                            ],
                          ))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          // like onTap
                        },
                        child: CircleAvatar(
                          child: FaIcon(FontAwesomeIcons.heart,color: AppDarkColors.circleButtonIconColor, size: getWidth(context) * 25/300,),
                          backgroundColor: AppDarkColors.likeShareButtonOutherBgColor,
                          radius: getWidth(context) * 25/300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getWidth(context) * 20/300),
                        child: InkWell(
                          onTap: (){
                            // like onTap
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppDarkColors.redDark, width: 3),
                              shape: BoxShape.circle
                            ),
                            child: CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.play,color: Colors.white, size: getWidth(context) * 25/300,),
                              backgroundColor: AppDarkColors.red,
                              radius: getWidth(context) * 35/300,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          // like onTap
                        },
                        child: CircleAvatar(
                          child: FaIcon(FontAwesomeIcons.shareAlt,color: AppDarkColors.circleButtonIconColor, size: getWidth(context) * 25/300,),
                          backgroundColor: AppDarkColors.likeShareButtonOutherBgColor,
                          radius: getWidth(context) * 25/300,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {

                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: FaIcon(FontAwesomeIcons.volumeDown, color: AppDarkColors.isDark,),
                        ),
                      ),
                      Expanded(
                        child: Slider(
                          value: sliderValue,
                          onChanged: (value) {
                            setState(() {
                              sliderValue = value;
                              print(value.toString());
                            });
                          },),
                      ),
                      InkWell(
                        onTap: () {

                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: FaIcon(FontAwesomeIcons.volumeUp, color: AppDarkColors.isDark,),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: getWidth(context),
            height: MediaQuery.of(context).size.height * 300/635,
            decoration: BoxDecoration(
              color: AppDarkColors.coverOutherAreaBg,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(75)),
              boxShadow: [BoxShadow(color: AppDarkColors.shadow, blurRadius: 3, spreadRadius: 2)]
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              left: getWidth(context) * 20/300,
              right: getWidth(context) * 20/300,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: FaIcon(FontAwesomeIcons.bell, color: Colors.white),
                      ),
                      InkWell(
                        child: FaIcon(FontAwesomeIcons.powerOff, color: AppDarkColors.redDark),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getWidth(context) * 40/300,
                    ),
                    decoration: BoxDecoration(
                      color: AppDarkColors.backgroundColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(75))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getWidth(context) * 100/300,
                          height: getWidth(context) * 100/300,
                          child: Image.network("https://cdn.freelogovectors.net/wp-content/uploads/2020/11/apple_music_logo.png",
                            width: getWidth(context) * 100/300,
                            height: getWidth(context) * 100/300,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text("Municipal Zepita", style: TextStyle(color: AppDarkColors.titleDark, fontSize: 18, fontWeight: FontWeight.w700),),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(flex: 1, child: Center(child: Text("Radio", style: TextStyle(color: AppDarkColors.isDark, fontSize: 22),)),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
