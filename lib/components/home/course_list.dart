import 'package:course_online/constant.dart';
import 'package:course_online/models/course.dart';
import 'package:flutter/material.dart';


class CourseList extends StatelessWidget {
  const CourseList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 226,
      child: ListView.builder(
        itemCount: course.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? spacer : 0,
              right: 13,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Container(
                height: 226,
                width: 199,
                color: whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(course[index].image),
                    Padding(
                      padding: EdgeInsets.all(13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            course[index].price,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: greenColor,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            course[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: darkColor,
                            ),
                          ),
                          SizedBox(height: 7),
                          Row(
                            children: [
                              Row(
                                children: [1, 2, 3, 4, 5].map((e) {
                                  return Icon(
                                    Icons.star,
                                    size: 17,
                                    color: (e <= course[index].rating)
                                        ? yellowColor
                                        : greyColor,
                                  );
                                }).toList(),
                              ),
                              SizedBox(width: 6),
                              Text(
                                "(${course[index].countRating})",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                  color: greyColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spacer)
          .copyWith(top: spacer, bottom: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: darkColor,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              "Show all",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: blueColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
