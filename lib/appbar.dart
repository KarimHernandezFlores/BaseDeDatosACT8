import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 19,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 9,
        horizontal: 18,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 220,
            child: Text(
              title,
              maxLines: 2,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 4,
                color: Colors.red,
              ),
              SizedBox(width: 4),
              Container(
                width: 10,
                height: 4,
                color: Colors.red,
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(136);
}
