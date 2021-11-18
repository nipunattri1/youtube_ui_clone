import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://picsum.photos/250?image=100',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: Image.network(
                    'https://picsum.photos/250?image=100',
                    fit: BoxFit.cover,
                  ).image,
                ),
                title: const Text('Some Random Title'),
                subtitle: const Text(
                    'Nipun Attri \u2022 15 NOV 2021 \u2022 12k views'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
