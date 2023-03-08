import 'package:flutter/material.dart';

import '../models/post.dart';
import '../services/post_service.dart';

class Api_Page extends StatefulWidget {
  const Api_Page({super.key});

  @override
  State<Api_Page> createState() => _ApiPageState();
}

class _ApiPageState extends State<Api_Page> {
  List<Post>? listaDePosts;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    // Llamamos a obtener los post
    obtenerPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBar(
        elevation: 0,
        title: const Text('Posts'),
      ),
      body: Visibility(
        visible: isLoaded,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
            itemCount: listaDePosts?.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue[300]),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listaDePosts![index].title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            listaDePosts![index].body ?? '',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  obtenerPosts() async {
    listaDePosts = await PostService().getPosts();
    if (listaDePosts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }
}
