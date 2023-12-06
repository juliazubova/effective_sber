import 'package:flutter/material.dart';
import 'package:sber/theme/colors.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.backgroundColor,
      expandedHeight: 280,
      elevation: 4,
      pinned: true,
      floating: false,
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: const Image(image: AssetImage('assets/arrow_right_square.png'))
        )
      ],
      leading: IconButton(
          onPressed: () {}, 
          icon: const Image(image: AssetImage('assets/cross.png'))
      ),

      bottom: TabBar(
        controller: tabController,
        labelColor: AppColors.textPrimary,
        unselectedLabelColor: AppColors.textSecondary,
        indicatorColor: AppColors.selectedTab,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const <Widget>[
          Tab(child: Text('Профиль'),),
          Tab(child: Text('Настройки'),),
        ],
      ),

      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 36,),
              Image.asset('assets/user_photo.png'),
              const SizedBox(height: 12),
              Text('Екатерина', textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10,)
            ]),
        )
      ),
    ); 
  }
}