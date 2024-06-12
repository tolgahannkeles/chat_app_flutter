// ignore_for_file: file_names

import 'package:first_test/pages/tab_views/FeedPage.dart';
import 'package:first_test/pages/tab_views/MessagePage.dart';
import 'package:first_test/pages/tab_views/ProfilePage.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: TabViews.values.length, vsync: this);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TabViews.values.length,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
              controller: _tabController,
              tabs: TabViews.values.map((e) => e.getIcon()).toList()),
        ),
        body: TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: TabViews.values.map((e) => e.getView()).toList()),
      ),
    );
  }
}

enum TabViews {
  message,
  feed,
  profile,
}

extension TabExtension on TabViews {
  Widget getView() {
    switch (this) {
      case TabViews.message:
        return const MessagePage();
      case TabViews.feed:
        return const FeedPage();
      case TabViews.profile:
        return const ProfilePage();
      default:
        return const Placeholder();
    }
  }

  Icon getIcon() {
    switch (this) {
      case TabViews.message:
        return const Icon(Icons.message_rounded);
      case TabViews.feed:
        return const Icon(Icons.feed_outlined);
      case TabViews.profile:
        return const Icon(Icons.person_2_outlined);
      default:
        return const Icon(Icons.error);
    }
  }
}
