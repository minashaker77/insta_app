import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_app/list_stories.dart';

class HomePage extends StatelessWidget {
  final instaPost = Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://roocket.ir/public/images/2020/4/15/discuss.png"),
                    ),
                  ),
                ),
                Text(
                  "حسام موسوی",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
      ),
      Row(
        children: [
          Expanded(
              child: Image.network(
            "https://roocket.ir/public/image/2018/9/23/flutter-1.png",
            fit: BoxFit.cover,
          ))
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print('pressed');
                  },
                  child: Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('pressed');
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 12.0),
                      child: Icon(
                        FontAwesomeIcons.comment,
                        color: Colors.black,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    print('pressed');
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 12.0),
                      child: Icon(
                        FontAwesomeIcons.paperPlane,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
            IconButton(
                icon: Icon(
                  FontAwesomeIcons.bookmark,
                  color: Colors.black,
                ),
                onPressed: null),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          'محمد و علی و 50,000 نفر دیگر این پست را لایک کرده اند',
          style: TextStyle(fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5.0, right: 12.0),
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
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "اضافه کردن یک نظر ...",
                  hintStyle: TextStyle(fontWeight: FontWeight.w500)),
            ))
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "یک روز قبل",
          style: TextStyle(color: Colors.grey),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return index == 0
              ? SizedBox(
                  child: ListStories(),
                  height: deviceSize.height * 0.15,
                )
              : instaPost;
        });
  }
}
