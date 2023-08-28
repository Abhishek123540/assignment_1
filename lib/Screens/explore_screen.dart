import 'package:assignment_1/Screens/refine_screen.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  var selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Scaffold(
          appBar: AppBar(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff1e2839),
        title: const Text('Hi, Welcome to Netclan'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (cx) => const RefineScreen()));
            },
            icon: const Icon(Icons.checklist),
          )
        ],
      ),
      body: Column(
        children: [
          ColoredBox(
            color: const Color(0xff283347),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    child: const Text(
                      'Personal',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {}),
                TextButton(
                    child: const Text(
                      'Business',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {}),
                TextButton(
                    child: const Text(
                      'Merchant',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 10),
              Form(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SizedBox(
                    height: 28,
                    width: 320,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        labelText: 'Search',
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.tune),
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.wiredNetwork),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.addressBook),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(LineIcons.hashtag),
            label: 'Groups',
          ),
        ],
        currentIndex: selectedTab,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            selectedTab = value;
          });
        },
      ),
    );
  }
}
