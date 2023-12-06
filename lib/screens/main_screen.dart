import 'package:flutter/material.dart';
import 'package:sber/theme/colors.dart';
import 'package:sber/widgets/appbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [Appbar(tabController: _tabController)]; 
          },
          body: TabBarView(
            controller: _tabController,
            children: [
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                // children: [], 
              ) // ... 
            ],
          )
          )
      )
    );
  }
}