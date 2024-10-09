import 'package:flutter/material.dart';

class NamaTab3 extends StatelessWidget {
  const NamaTab3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: ProfileContent(),
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(
              'assets/image/0C4EDE04-5FD6-41C3-9599-85ADEFD55B8C.JPG'),
        ),
        SizedBox(height: 20),
        Text(
          'Ghina Aqli Syahirah',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          '2210631170123@student.unsika.ac.id',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
