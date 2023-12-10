import 'package:flutter/material.dart';
import 'package:sber/theme/colors.dart';
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
          const SizedBox(height: 12),
          // ListView.separated( 
          //   separatorBuilder: (context, int index) => const Divider(), 
          //   itemCount: tariffs.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return TariffCard(tariff: tariffs[index]);
          //   }
          // ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: TariffCard(tariff: tariffs[0]),
          ),

          for (var (index, item) in tariffs.indexed) 
            if (index != 0) ...[
              Divider(
                height: 10,
                indent: 50,
                color: AppColors.divider,
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(12),
                child: TariffCard(tariff: item),
              ),
            ]
        ],
      )
    );
  }
}