import 'package:flutter/material.dart';
import 'package:sber/widgets/subheader.dart';

class Interests extends StatefulWidget {
  const Interests({super.key, required this.interests});

  // final Chapter chapter;
  final Map<String, bool> interests;

  @override
  State<Interests> createState() => _Interests();
}

class _Interests extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          SubHeader(
            title: 'Интересы', description: 'Мы подбираем истории и предложения по темам, которые вам нравятся'
            ),
          SizedBox(height: 8),
          
        ]
      ),
    );
  }
}