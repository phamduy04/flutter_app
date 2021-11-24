import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_redesign/models/posts_model.dart';
import 'package:instagram_ui_redesign/screen/view_post_screen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool selected = true;
  Widget _buiPost(int index) {
    return Container(
        height: 560,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      height: 50,
                      width: 50,
                      image: AssetImage(posts[index].authorImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              title: Text(
                posts[index].authorName,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                posts[index].timeago,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    size: 30,
                  )),
            ),
            Container(
              height: 400,
              width: double.infinity,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(posts[index].imageUrl),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  selected = !selected;
                                });
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: selected ? Colors.red : Colors.white,
                                size: 25,
                              )),
                          Text('2.515'),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewPostScreen(
                                            post: posts[index])));
                              },
                              icon: Icon(
                                Icons.chat,
                                size: 25,
                              )),
                          Text('350'),
                        ],
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        size: 25,
                      )),
                ],
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Instagram',
                    style: TextStyle(
                      fontFamily: 'Billabong',
                      fontSize: 40,
                    )),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.live_tv,
                          size: 30,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          size: 30,
                          color: Colors.black,
                        )),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length + 1,
                itemBuilder: (BuildContext context, index) {
                  if (index == 0) {
                    return SizedBox(width: 10.0);
                  }
                  return Container(
                    height: 60,
                    width: 60,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      child: ClipOval(
                        child: Image(
                          height: 60,
                          width: 60,
                          image: AssetImage(stories[index - 1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }),
          ),
          _buiPost(0),
          _buiPost(1),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.dashboard,
                  size: 30,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.grey,
                )),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color(0xFF23B66F),
                  onPressed: () => print('Upload photo'),
                  child: Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: Colors.grey,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.grey,
                ))
          ],
        ),
      ),
    );
  }
}
