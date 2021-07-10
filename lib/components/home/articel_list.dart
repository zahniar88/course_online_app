import 'package:course_online/constant.dart';
import 'package:course_online/models/article.dart';
import 'package:flutter/material.dart';


class ArticleList extends StatelessWidget {
  const ArticleList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spacer),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 13),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: double.infinity,
                height: 88,
                color: whiteColor,
                padding: EdgeInsets.only(right: 13),
                child: Row(
                  children: [
                    Image.asset(
                      articles[index].image,
                      width: 95,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 13),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            articles[index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: darkColor,
                            ),
                          ),
                        ),
                        Text(
                          articles[index].category,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: greyColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      articles[index].favorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: articles[index].favorite ? roseColor : greyColor,
                      size: 17,
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
