import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:social_page/models/post.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
  // Future getScreen() async {
  //   final response =
  //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   actions: const [
        //     Text(
        //       "4 new messages",
        //       style: TextStyle(fontSize: 15, color: Colors.black),
        //     )
        //   ],
        //   centerTitle: false,
        //   title: Container(

        //     child: const Text(
        //       "Messages",
        //       style: TextStyle(fontSize: 25, color: Colors.black),
        //     ),
        //   ),
        // ),
        body: SafeArea(
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Messages",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Text(
                    "4 new messages",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}



//widget area