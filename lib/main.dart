import 'package:flutter/material.dart';

void main() {
  runApp(Facebook());
}

class Facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FacebookHomePage(),
    );
  }
}

class FacebookHomePage extends StatefulWidget {
  @override
  _FacebookHomePageState createState() => _FacebookHomePageState();
}

class _FacebookHomePageState extends State<FacebookHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Facebook logo
            Image.asset(
              'assets/facebook_logo.png',
              height: 130,
              width: 130,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/plus_icon.png',
              height: 26,
              width: 26,
            ),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/search_icon.png',
              height: 23,
              width: 26,
            ),
            onPressed: () {
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/messenger_icon.png',
              height: 26,
              width: 26,
            ),
            onPressed: () {
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 32,
                  icon: Image.asset(
                    'assets/home_icon.png',
                    height: 30,
                    width: 30,
                  ),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 32,
                  icon: Image.asset(
                    'assets/friends_icon.png',
                    height: 30,
                    width: 30,
                  ),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 32,
                  icon: Image.asset(
                    'assets/shop_icon.png',
                    height: 30,
                    width: 30,
                  ),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 32,
                  icon: Image.asset(
                    'assets/bell_icon.png',
                    height: 30,
                    width: 30,
                  ),
                  onPressed: () {
                  },
                ),
                IconButton(
                  iconSize: 32,
                  icon: Image.asset(
                    'assets/burger_icon.png',
                    height: 30,
                    width: 30,
                  ),
                  onPressed: () {
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.grey[300],
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/main_user.jpg'),
                  ),
                  SizedBox(width: 14),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15),
                          Expanded(
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Write something here',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Image.asset(
                    'assets/photos_icon.png',
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CreateStoryCard(
                      userName: "",
                      userImage: AssetImage('assets/main_user.jpg'),
                    ),
                    StoryCard(
                      userName: "Sample User1",
                      userImage: AssetImage('assets/story1.jpg'),
                      userProfileImage: AssetImage('assets/user1.jpg'),
                    ),
                    StoryCard(
                      userName: "Sample User2",
                      userImage: AssetImage('assets/story2.jpg'),
                      userProfileImage: AssetImage('assets/user2.jpg'),
                    ),
                    StoryCard(
                      userName: "Sample User3",
                      userImage: AssetImage('assets/story3.jpg'),
                      userProfileImage: AssetImage('assets/user3.jpg'),
                    ),
                    StoryCard(
                      userName: "Sample User4",
                      userImage: AssetImage('assets/story4.jpg'),
                      userProfileImage: AssetImage('assets/user4.jpg'),
                    ),
                    StoryCard(
                      userName: "Sample User5",
                      userImage: AssetImage('assets/story5.jpg'),
                      userProfileImage: AssetImage('assets/user5.jpg'),
                    ),
                    StoryCard(
                      userName: "Sample User6",
                      userImage: AssetImage('assets/story6.jpg'),
                      userProfileImage: AssetImage('assets/user6.jpg'),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: UserPostWidget(
                userName: "Sample User 4",
                userImage: AssetImage('assets/user4.jpg'),
                postText: "This is a sample post !",
                postImage: AssetImage('assets/story3.jpg'),
              ),
            ),
            Divider(
              color: Colors.grey[300],
              thickness: 8,
            ),
          ],
        ),
      ),
    );
  }
}

class CreateStoryCard extends StatelessWidget {
  final String userName;
  final ImageProvider userImage;

  const CreateStoryCard({
    required this.userName,
    required this.userImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          // User Image
          Container(
            height: 180,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: userImage,
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.black.withOpacity(0.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Create story",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final String userName;
  final ImageProvider userImage;
  final ImageProvider userProfileImage;

  const StoryCard({
    required this.userName,
    required this.userImage,
    required this.userProfileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 107,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: userImage,
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 8.0,
            left: 8.0,
            child: CircleAvatar(
              radius: 18,
              backgroundImage: userProfileImage,
            ),
          ),
        ],
      ),
    );
  }
}

class UserPostWidget extends StatelessWidget {
  final String userName;
  final ImageProvider userImage;
  final String postText;
  final ImageProvider postImage;

  const UserPostWidget({
    required this.userName,
    required this.userImage,
    required this.postText,
    required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundImage: userImage,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 0),
                  Row(
                    children: [
                      Text(
                        '5m',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.public,
                        color: Colors.grey,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_horiz),
              SizedBox(width: 8),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(postText),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Image(image: postImage),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_alt,
                    size: 18,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 4),
                  Text('29k'),
                ],
              ),
              Row(
                children: [
                  Text('104k Comments'),
                  SizedBox(width: 8),
                  Text('57k Shares'),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ReactionButton(
                icon: AssetImage('assets/like.png'),
                label: 'Like',
                onPressed: () {},
              ),
              ReactionButton(
                icon: AssetImage('assets/comment.png'),
                label: 'Comment',
                onPressed: () {},
              ),
              ReactionButton(
                icon: AssetImage('assets/share.png'),
                label: 'Share',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ReactionButton extends StatelessWidget {
  final ImageProvider icon;
  final String label;
  final VoidCallback onPressed;

  const ReactionButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Image(
        image: icon,
        height: 24,
        width: 24,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.grey[600],
        ),
      ),
    );
  }
}