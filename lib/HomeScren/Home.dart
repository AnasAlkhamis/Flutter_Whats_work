import 'package:flutter/material.dart';
import 'package:whats_work/class/userClass.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Users> users = [
    Users(name: "Anas Khamis", location: "Amman"),
    Users(name: "Taha Khamis", location: "Iraq"),
    Users(name: "Mhmd Khamis", location: "Jo"),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          "WhatsWork",
          style: TextStyle(color: Colors.blueGrey),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.blueGrey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(users[index].name),
                        Text(users[index].location),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// children: [
// SafeArea(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// children: [
// CircleAvatar(
// backgroundImage: NetworkImage(
// 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
// ),
// Padding(
// padding: const EdgeInsets.all(12),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Anas Khamis"),
// Text("Amman"),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// ],
