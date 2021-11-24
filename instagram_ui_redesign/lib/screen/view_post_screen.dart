import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_redesign/models/comment_model.dart';
import 'package:instagram_ui_redesign/models/posts_model.dart';

class ViewPostScreen extends StatefulWidget {
  const ViewPostScreen({Key? key, required this.post}) : super(key: key);
  final Post post;
  @override
  _ViewPostScreenState createState() => _ViewPostScreenState();
}

class _ViewPostScreenState extends State<ViewPostScreen> {
  bool selected = true;
  Widget _buildeComments(int index) {
    return Column(
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
                  image: AssetImage(comments[index].authorImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Text(
            comments[index].authorName,
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            comments[index].text,
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                    title: Row(
                      children: [
                        Container(
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
                                image: AssetImage(widget.post.authorImageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.post.authorName,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.post.timeago,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
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
                            image: AssetImage(widget.post.imageUrl),
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
                                      size: 25,
                                      color:
                                          selected ? Colors.red : Colors.white,
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
                                    onPressed: () {},
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
              )),
          Container(
            height: 80.0 * comments.length,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.builder(
                itemCount: comments.length,
                itemBuilder: (BuildContext context, index) {
                  return _buildeComments(index);
                }),
          )
        ],
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
        child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Container(
                      height: 40,
                      width: 40,
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
                            height: 40,
                            width: 40,
                            image: AssetImage(widget.post.authorImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(20),
                    hintText: 'Add a comment',
                    suffixIcon: Container(
                      margin: EdgeInsets.only(right: 4.0),
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green),
                      child: TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.send,
                            size: 35,
                            color: Colors.white,
                          )),
                    )),
              ),
            )),
      ),
    );
  }
}
