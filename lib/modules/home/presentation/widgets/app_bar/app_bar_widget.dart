import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final String title;
  final String subtitle;
  final double height;

  AppBarWidget({required this.title, required this.height, this.subtitle = ''})
      : super(
            preferredSize: Size.fromHeight(height),
            child: Container(
              height: height,
              decoration: BoxDecoration(
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(color: Colors.blueGrey, offset: Offset(0,5), blurRadius: 2)
                ]
              ),
              child: Container(
                margin: EdgeInsets.all(22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),

            ));
}
