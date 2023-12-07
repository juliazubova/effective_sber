import 'package:flutter/material.dart';
import 'package:sber/theme/colors.dart';
import 'package:sber/widgets/appbar.dart';
import 'package:sber/widgets/service_carousel.dart';
import 'package:sber/widgets/tariffs.dart';
import 'package:sber/widgets/interests.dart';
import 'package:sber/data/sample_data.dart';

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
                children: [
                  const SizedBox(height: 30),
                  ServiceCarousel(services: sampleServices,),
                  const SizedBox(height: 20),
                  Tariffs(tariffs: sampleTariffs),
                  const SizedBox(height: 40),
                  Interests(interests: sampleIntersts)
                ], 
              ), 
              const SizedBox.shrink()
            ],
          )
          )
      )
    );
  }
}