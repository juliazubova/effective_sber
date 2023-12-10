import 'package:flutter/material.dart';
import 'package:sber/theme/colors.dart';
import 'package:sber/theme/strings.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.tabController, required this.username});

  final TabController tabController;
  final String username;

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
          icon: const Image(image: AssetImage('assets/arrow_right_square.png'), width: 24, height: 24)
        )
      ],
      leading: IconButton(
          onPressed: () {}, 
          icon: const Image(image: AssetImage('assets/cross.png'), width: 24, height: 24)
      ),

      bottom: TabBar(
        controller: tabController,
        labelColor: AppColors.textPrimary,
        unselectedLabelColor: AppColors.textSecondary,
        indicatorColor: AppColors.selectedTab,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: const <Widget>[
          Tab(child: Text(Strings.profile),),
          Tab(child: Text(Strings.settings),),
        ],
      ),

      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 36,),
              Container(
                height: 110,
                width: 110,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(38)),
                  shadows: const [BoxShadow(
                    blurRadius: 24, 
                    color: AppColors.shadow, 
                    offset: Offset(0, 16),
                    spreadRadius: -16
                  )]
                ),
                child: Image.asset('assets/user_photo.png'),
              ),
              const SizedBox(height: 12),
              Text(username, textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10,)
            ]),
        )
      ),
    ); 
  }
}