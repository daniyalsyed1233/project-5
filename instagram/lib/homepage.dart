import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> profileImages = [
    "aa.jpg",
    "3.jpg",
    "aa.jpg",
    "3.jpg",
    "aa.jpg",
    "dd.webp",
    "3.jpg",
    "aa.jpg",
  ];
  List<String> posts = [
    "aa.jpg",
    "3.jpg",
    "aa.jpg",
    "3.jpg",
    "aa.jpg",
    "dd.webp",
    "3.jpg",
    "aa.jpg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/insta.png",
          height: 50,
        ),
        actions: [
          //1
          IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: Icon(Icons.chat_bubble_outline), onPressed: () {}),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //story
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    ((index) => Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage("assets/2.jpg"),
                                child: CircleAvatar(
                                    radius: 32,
                                    backgroundImage:
                                        AssetImage(profileImages[index])),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Profile Name",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              )
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Divider(),
              //post
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundImage: AssetImage("assets/2.jpg"),
                              child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage:
                                      AssetImage(profileImages[index])),
                            ),
                          ),
                          Text("profile name"),
                          Spacer(),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert)),
                        ],
                      ),
                      //image post
                      Image.asset(posts[index]),
                      // footer post
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.chat_bubble_outline)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.ios_share_sharp)),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.bookmark_border))
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(text: "Liked by "),
                                  TextSpan(
                                    text: "Danish Bata",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: " and "),
                                  TextSpan(
                                      text: "others",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Danish Bata ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "Towkar zindabad,Elon musk lawde pe",
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "View all 12 comments",
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
