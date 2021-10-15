import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        _buildHeaderAvatar(),
        SizedBox(width: 20),
        _buildHeaderProfile()
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        // backgroundImage: AssetImage("assets/profile.jpg"),
        backgroundImage: NetworkImage("https://d3edy9y3v7d67c.cloudfront.net/rooms/10001/images/960/i81241.jpg"),
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Eden Ko",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Developer, Mrmention",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "퇴근하고 싶어요...",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
