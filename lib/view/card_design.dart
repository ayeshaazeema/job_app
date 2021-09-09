import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';

class CardCategory extends StatelessWidget {
  final String jobType;
  final String jobImage;

  const CardCategory({required this.jobType, required this.jobImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        width: 150,
        height: 200,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(jobImage))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              jobType,
              style: whiteTextStyle.copyWith(
                  fontSize: 18.0, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
