import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  // 초기값 셋팅
  final String imageName;
  final String title;

  const RecipeListItem({required this.imageName, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 2/1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/images/$imageName.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        Text(
          "Round out your next picnic with our favorite Southern side dishes, from creamy slaw to crunchy cucumber salad.",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
