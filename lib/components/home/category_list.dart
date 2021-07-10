import 'package:course_online/constant.dart';
import 'package:course_online/models/category.dart';
import 'package:flutter/material.dart';


class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 132,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 132,
            width: 132,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: whiteColor,
            ),
            padding: EdgeInsets.all(13),
            margin: EdgeInsets.only(
              left: index == 0 ? spacer : 0,
              right: 14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  categories[index].icon,
                  width: 47,
                ),
                SizedBox(height: 18),
                Text(
                  categories[index].title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: darkColor,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "${categories[index].count} Course",
                  style: TextStyle(
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
