import 'package:flutter/material.dart';
import 'package:youtube_clone/src/widgets/video_card.dart';

class HomeFeedView extends StatelessWidget {
  const HomeFeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Shorts',
            icon: Icon(Icons.short_text),
          ),
          BottomNavigationBarItem(
            label: 'Add',
            icon: Icon(Icons.add_circle_outline_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Subscriptions',
            icon: Icon(Icons.subscriptions_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Library',
            icon: Icon(Icons.video_library_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          'YouTube',
          style: TextStyle(color: Colors.black),
        ),
        // elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 12,
              // random image from web
              backgroundImage: Image.network(
                'https://picsum.photos/200/300',
              ).image,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const VideoCard();
        },
      ),
    );
  }
}
