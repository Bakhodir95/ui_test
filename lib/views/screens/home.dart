import 'package:flutter/material.dart';
import 'package:ui_test/models/socialpost.dart';
import 'package:ui_test/views/screens/profile.dart';
import 'package:ui_test/views/screens/widgets/profile/profile_pictures_widget.dart';
import 'package:ui_test/views/screens/widgets/home/socialpost_widget.dart';
import 'package:ui_test/views/screens/bottomnavi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<HomeScreen> {
  final List<SocialPost> samplePosts = [
    SocialPost(
      userAvatar: 'assets/images/profile2.png',
      username: 'Opphen',
      location: 'Brooklyn, NYC',
      imageUrl: 'assets/images/profile.png',
      likedByAvatars: [
        'assets/images/profile3.png',
        'assets/images/profile.png',
        'assets/images/profile2.png',
        'assets/images/profile1.png',
      ],
      likedByText: 'Isabella',
      likes: 138,
      isLike: false,
      isBookmarked: false,
    ),
    SocialPost(
      userAvatar: 'assets/images/profile3.png',
      username: 'Opphen',
      location: 'Brooklyn, NYC',
      imageUrl: 'assets/design/orange.png',
      likedByAvatars: [
        'assets/images/profile1.png',
        'assets/images/profile2.png',
        'assets/images/profile3.png',
        'assets/images/profile.png',
      ],
      likedByText: 'Isabella',
      likes: 138,
      isBookmarked: true,
      isLike: true,
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 4) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (ctx) => const ProfileScreen()),
          (Route<dynamic> route) => false,
        );
      }
      if (_selectedIndex == 0) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (ctx) => const HomeScreen()),
          (Route<dynamic> route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Cloudy",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Color.fromARGB(255, 130, 4, 193)),
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search_rounded)),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ProfilePicturesWidget()),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: SocialFeed(posts: samplePosts),
            ),
          ],
        ),
      )),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
    );
  }
}
