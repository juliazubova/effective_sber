import 'package:flutter/material.dart';
import 'package:sber/model/tariff.dart';

class TariffCard extends StatelessWidget {
  final Tariff tariff;
  const TariffCard({super.key, required this.tariff});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                tariff.icon,
                width: 36,
                height: 36,
              ),
              const SizedBox(width: 12),
              Expanded(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tariff.name,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleSmall
                      ), 
                      Text(
                          tariff.description,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall
                      )
                  ],
                )
              ),
              const Padding(padding: EdgeInsets.only(left: 16)),
              // Image.asset(Images.arrow)
            ],
          )
        ]
      )
    );
  }
}