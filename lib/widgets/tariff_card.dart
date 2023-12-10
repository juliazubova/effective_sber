import 'package:flutter/material.dart';
import 'package:sber/model/tariff.dart';

class TariffCard extends StatelessWidget {
  final Tariff tariff;
  const TariffCard({super.key, required this.tariff});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){},
      contentPadding: const EdgeInsets.only(right: 16),
      leading: Image.asset(tariff.icon, width: 36, height: 36),
      title: tariff.name.isNotEmpty ? Text(tariff.name) : null,
      titleTextStyle: Theme.of(context).textTheme.titleSmall,
      subtitle: Text(tariff.description),
      subtitleTextStyle: Theme.of(context).textTheme.bodySmall,
      trailing: Image.asset("assets/disclosure.png", width: 24, height: 24),
    );
  }
}