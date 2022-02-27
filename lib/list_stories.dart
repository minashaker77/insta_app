import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "استوری ها",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: [
          Icon(Icons.play_arrow),
          SizedBox(width: 5.0),
          Text(
            "مشاهده همه",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ],
  );
  final stories = Expanded(
      child: Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://roocket.ir/public/images/2020/4/15/discuss.png"),
                  ),
                ),
              ),
              index == 0
                  ? Positioned(
                      top: 20.0,
                      left: 30.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10.0,
                        child: Icon(
                          Icons.add,
                          size: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
        }),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
