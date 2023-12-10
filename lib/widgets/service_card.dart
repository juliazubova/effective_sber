import 'package:flutter/material.dart';
import 'package:sber/model/service.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.service});

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(service.icon, width: 36, height: 36),
                  const SizedBox(width: 13),
                  Text(
                    service.name,
                    style: Theme.of(context).textTheme.titleMedium
                  )
                ],
              ),
              const Expanded(child: SizedBox()),
              Text(service.info,
                  style: Theme.of(context).textTheme.titleMedium),
              Text(service.price,
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        )
      ),
    );
  }
}