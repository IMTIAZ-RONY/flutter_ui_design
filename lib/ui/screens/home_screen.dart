import 'package:flutter/material.dart';
import 'package:flutter_ui_design/ui/screens/home/tabs/calls_tab.dart';
import '../../chat_map.dart';
import '../../utils/color.dart';
import '../../utils/config.dart';
import 'home/tabs/chats_tab.dart';
import 'home/tabs/community_tab.dart';
import 'home/tabs/updates_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _totalUnreadChats = chatUsers.where((user) => (user['unread_count'] as int) > 0).length;
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.appBarColor,
          title: Text(
            AppConfig.appName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.white, size: 20),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.white, size: 20),
            ),
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            unselectedLabelColor: Colors.white.withValues(alpha: 0.5),
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(icon: Icon(Icons.groups, size: 25)),
              Tab(
                child:Row(
                children: [
                  const Text("Chats"),
                  if (_totalUnreadChats > 0)
                    Container(
                      margin: const EdgeInsets.only(left: 4),
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        _totalUnreadChats.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                        ),
                      ),
                    ),

                ]
              ) ,),
              Tab(text: "Updates"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "New Chat",
          backgroundColor: AppColors.floatingActionButtonColor,
          onPressed: () {},
          child: Icon(Icons.message_rounded, color: Colors.white, size: 30),
        ),

        body: TabBarView(
          children: [
            CommunityTab(),
            ChatsTab(),
            UpdatesTab(),
            CallsTab(),
          ],
        ),
      ),
    );
  }
}
