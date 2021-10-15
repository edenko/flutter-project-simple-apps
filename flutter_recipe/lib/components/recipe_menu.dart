import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildMenuItem(Icons.food_bank, "ALL"),
            SizedBox(width: 15),
            _buildMenuItem(Icons.brunch_dining, "SALAD"),
            SizedBox(width: 15),
            _buildMenuItem(Icons.dinner_dining, "STEAK"),
            SizedBox(width: 15),
            _buildMenuItem(Icons.lunch_dining, "BURGER"),
            SizedBox(width: 15),
            _buildMenuItem(Icons.lunch_dining, "BURGER"),
          ],
        ),
      ),
    );
  }

  Container _buildMenuItem(IconData mIcon, String text) {
    return Container(
          height: 90,
          width: 70,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                mIcon,
                size: 30,
                color: Colors.redAccent,
              ),
              SizedBox(height: 5),
              Text(text),
            ],
          ),
        );
  }
}
