import 'package:course_online/constant.dart';
import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget implements PreferredSizeWidget {
  const HeaderHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: whiteGreyColor,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: spacer)
              .copyWith(bottom: 14, top: spacer),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/person.png",
                  width: 34,
                  height: 34,
                ),
              ),
              Spacer(),
              MaterialButton(
                onPressed: () {},
                minWidth: 29,
                height: 29,
                padding: EdgeInsets.all(4),
                elevation: 0,
                color: whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Icon(Icons.search_outlined),
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 29,
                height: 29,
                padding: EdgeInsets.all(4),
                elevation: 0,
                color: whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Icon(Icons.notifications_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75);
}
