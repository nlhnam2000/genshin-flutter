import 'package:flutter/material.dart';
import 'package:genshin_app/models/character_model.dart';

class CharacterDetail extends StatelessWidget {
  const CharacterDetail({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return TestScreen();
  }
}

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  Card statsWidget() {
    return Card(
        elevation: 1.5,
        margin: const EdgeInsets.only(bottom: 210.0, left: 20.0, right: 20.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Photos",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "22k",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff167F67),
                              ),
                            )),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Followers",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                              ),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "232k",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff167F67),
                              ),
                            )),
                      ],
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Following",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16.0),
                            )),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "332k",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff167F67),
                              ),
                            )),
                      ],
                    ),
                    flex: 1,
                  )
                ],
              ),
            )
          ],
        ));
  }

  @override
  build(BuildContext context) {
    return Material(
        type: MaterialType.transparency,
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                headerWidget(),
                bodyWidget(),
              ],
            ),
            Positioned(
              top: 240,
              child: statsWidget(),
            ),
          ],
        ));
  }

  Widget headerWidget() {
    var header = Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff167F67),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 10.0),
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  color: const Color(0xff167F67),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://4.bp.blogspot.com/-QXHUYmKycZU/W-Vv9G01aAI/AAAAAAAAATg/eF1ArYpCo7Ukm1Qf-JJhwBw3rOMcj-h6wCEwYBhgL/s1600/logo.png"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.all(const Radius.circular(40.0)),
                ),
              ),
            ),
            Text(
              "Developer Libs",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffffffff),
              ),
            )
          ],
        ),
      ),
      flex: 1,
    );

    return header;
  }

  Widget bodyWidget() {
    var bodyWidget = Expanded(
      child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
            child: Column(
              children: <Widget>[
                CustomText(
                        label: "contact@developerlibs",
                        textColor: 0xff858585,
                        iconColor: 0xff167F67,
                        fontSize: 15.0,
                        icon: Icons.email)
                    .text(),
                CustomText(
                        label: "+919999999999",
                        textColor: 0xff858585,
                        iconColor: 0xff167F67,
                        fontSize: 15.0,
                        icon: Icons.phone)
                    .text(),
                CustomText(
                        label: "Developer libs",
                        textColor: 0xff858585,
                        iconColor: 0xff167F67,
                        fontSize: 15.0,
                        icon: Icons.youtube_searched_for)
                    .text(),
                CustomText(
                        label: "Google Map",
                        textColor: 0xff858585,
                        iconColor: 0xff167F67,
                        fontSize: 15.0,
                        icon: Icons.add_location)
                    .text(),
              ],
            ),
          )),
      flex: 2,
    );
    return bodyWidget;
  }
}

class CustomText {
  final String label;
  final double fontSize;
  final String? fontName;
  final int textColor;
  final int iconColor;
  final TextAlign textAlign;
  final int maxLines;
  final IconData icon;

  CustomText(
      {required this.label,
      this.fontSize = 10.0,
      this.fontName,
      this.textColor = 0xFF000000,
      this.iconColor = 0xFF000000,
      this.textAlign = TextAlign.start,
      this.maxLines = 1,
      this.icon = Icons.broken_image});

  Widget text() {
    var text = Text(
      label,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(
        color: Color(textColor),
        fontSize: fontSize,
        fontFamily: fontName,
      ),
    );

    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(
            icon,
            color: Color(iconColor),
          ),
        ),
        text
      ],
    );
  }
}
