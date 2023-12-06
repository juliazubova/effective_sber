import 'package:flutter/material.dart';
import 'package:sber/theme/colors.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.backgroundColor,
      elevation: 4,
      pinned: true,
      floating: false,
      expandedHeight: 280,
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
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 36,),
              Image.asset('assets/user_photo.png'),
              const SizedBox(height: 36),
              Text('Екатерина', textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 10,)
            ]),
        )
      ),
    ); 
  }
}