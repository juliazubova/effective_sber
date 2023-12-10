import 'package:flutter/material.dart';
import 'tariff_card.dart';
import 'package:sber/model/tariff.dart';

class Tariffs extends StatelessWidget {
  final List<Tariff> tariffs;
  const Tariffs({super.key, required this.tariffs});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, int index) => const Divider(
              height: 10,
              indent: 50,
            ), 
            itemCount: tariffs.length,
            itemBuilder: (BuildContext context, int index) {
              return TariffCard(tariff: tariffs[index]);
            }
          ),
        ],
      )
    );
  }
}