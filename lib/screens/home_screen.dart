import 'package:course_online/components/home/articel_list.dart';
import 'package:course_online/components/home/category_list.dart';
import 'package:course_online/components/home/course_list.dart';
import 'package:course_online/components/home/header_home.dart';
import 'package:course_online/components/home/navigation_home.dart';
import 'package:course_online/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGreyColor,
      appBar: HeaderHome(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: spacer).copyWith(bottom: 14),
              child: Text(
                "Want to Study Class\nwhat's Today?",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: darkColor,
                  fontSize: 20,
                ),
              ),
            ),
            CategoryList(),
            SectionTitle(title: "Popular Course", onTap: () {}),
            CourseList(),
            SectionTitle(title: "Articles", onTap: () {}),
            ArticleList(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationHome(
        currentIndex: currentIndex,
        onTap: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
