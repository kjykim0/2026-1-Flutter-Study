
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Insta(),
        theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    );
  }
}


class Insta extends StatelessWidget {
  const Insta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderSection(),
                StorySection(),
                PostSection(),
                SizedBox(height: 20,),
                PostSection(),
              ],
            ),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_outlined), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.send_outlined), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ' '),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ' '),
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.add, color: Colors.white, size: 30,),
          Text(
            'Instagram',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(Icons.bookmark_border, color: Colors.white, size: 28,),
              SizedBox(width: 16,),
              Icon(Icons.favorite_border, color: Colors.white, size: 28,),
            ],
          )
        ],
      ),
    );
  }
}

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  Widget storyItem(String name){
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundColor: Colors.grey,
          ),
          const SizedBox(height: 16,),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            storyItem("내 스토리"),
            storyItem("half_1313"),
            storyItem("hyeonsu2373"),
            storyItem("jeryo_0"),
            storyItem("jimin._.0425"),
            storyItem("1"),
            storyItem("2"),
            storyItem("3"),
          ],
        ),
      ),
    );
  }
}

class PostSection extends StatelessWidget {
  const PostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                    "hyeonsu2373",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Icon(Icons.more_vert, color: Colors.white,),
            ],
          ),
        ),
        Image.network(
          'https://picsum.photos/500/400',
          width: double.infinity,
          height: 420,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.white,),
              SizedBox(width: 12,),
              Icon(Icons.mode_comment_outlined, color: Colors.white,),
              SizedBox(width: 12,),
              Icon(Icons.send_outlined, color: Colors.white,),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '좋아요 20개',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}


