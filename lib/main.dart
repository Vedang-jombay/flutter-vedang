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
          // First Row Actions
          IconButton(
            icon: Image.asset(
              'assets/plus_icon.png',
              height: 26,
              width: 26,
            ),
            onPressed: () {
              // Add functionality here
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/search_icon.png',
              height: 23,
              width: 26,
            ),
            onPressed: () {
              // Add functionality here
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/messenger_icon.png',
              height: 26,
              width: 26,
            ),
            onPressed: () {
              // Add functionality here
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
                // Second Row Actions
                IconButton(
                  iconSize: 32,
                  icon: Image.asset(
                    'assets/home_icon.png',
                    height: 30,
                    width: 30,
                  ),
                  onPressed: () {
                    // Add functionality here
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
                    // Add functionality here
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
                    // Add functionality here
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
                    // Add functionality here
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
                    // Add functionality here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Colors.grey[300],
            thickness: 2,
          ),
          // Second section
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
          // Third section - Story Cards
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
        ],
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
          // Plus Button and Text
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
          // User Image
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
          // Profile Picture
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
