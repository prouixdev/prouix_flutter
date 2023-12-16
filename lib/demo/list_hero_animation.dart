import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppList());
}

// MyAppList is the main entry point of the application.
class MyAppList extends StatelessWidget {
  const MyAppList({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root widget that configures the overall visual theme of the app.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.green,
        useMaterial3: true,
      ),
      title: 'My Flutter App',
      home: const HomePage(),
    );
  }
}

// Post class represents a data model for a post.
class Post {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Post({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

// HomePage displays a list of posts using a ListView.
class HomePage extends StatelessWidget {
  const HomePage({super.key});


  // Helper method to generate a list of sample posts.
  List<Post> _loadPosts(BuildContext context) {

    List<String> imageUrls = [
      'https://images.pexels.com/photos/38238/maldives-ile-beach-sun-38238.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'https://images.pexels.com/photos/1632917/pexels-photo-1632917.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'https://images.pexels.com/photos/176400/pexels-photo-176400.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'https://images.pexels.com/photos/3703521/pexels-photo-3703521.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'https://images.pexels.com/photos/678725/pexels-photo-678725.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'https://images.pexels.com/photos/450038/pexels-photo-450038.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'https://images.pexels.com/photos/1021074/pexels-photo-1021074.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    ];


    // Create a Random object for generating random indices.
    Random random = Random();

    return List.generate(
      10,
          (index) => Post(
        id: index,
        title: 'Beach $index',
        description: 'Transitions are short animations that connect individual elements or full-screen views of an app.',
        imageUrl: imageUrls[random.nextInt(imageUrls.length)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transitions Demo'),
      ),
      body: ListView.builder(
        itemCount: _loadPosts(context).length,
        itemBuilder: (context, index) {
          Post post = _loadPosts(context)[index];
          return PostCard(post: post);
        },
      ),
    );
  }
}

// PostCard is a widget that displays a post in a card format.
class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: () => _navigateToDetail(context, post),
        child:  Hero(
          tag: 'post_card_${post.id}',
          child: Material(
            child: Card(
              margin: const EdgeInsets.all(8.0),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Displaying post image.
                        Image.network(
                          post.imageUrl,
                          height: 210,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        /*Image.asset(
                          'assets/images/${post.imageUrl}',
                          height: 280,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),*/
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              // Displaying post title.
                              Text(
                                post.title,
                                style: MyTextSample.title(context)!.copyWith(
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 5),
                              // Displaying post description.
                              Text(
                                post.description,
                                style: MyTextSample.body1(context),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );


  }

  // Method to navigate to the detail page when a post is tapped.
  void _navigateToDetail(BuildContext context, Post post) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PostDetailPage(post: post),
      ),
    );
  }
}

// PostDetailPage displays detailed information about a post.
class PostDetailPage extends StatelessWidget {
  final Post post;

  const PostDetailPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Detail'),
      ),
      body: Hero(
        tag: 'post_card_${post.id}',
        child: Card(
          margin: const EdgeInsets.all(8.0),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Displaying detailed post image.
                Image.network(
                  post.imageUrl,
                  fit: BoxFit.cover,
                  height: 400,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Displaying detailed post title.
                      Text(
                        post.title,
                        style: MyTextSample.title(context)!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Displaying detailed post description.
                      Text(
                        post.description,
                        style: MyTextSample.body1(context)!.copyWith(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// MyTextSample is a utility class that provides text styles.
class MyTextSample {
  static TextStyle? title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge;
  }

  static TextStyle? body1(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium;
  }
}
