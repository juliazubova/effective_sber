import 'package:flutter/material.dart';
import 'service_card.dart';
import 'package:sber/model/service.dart';

class ServiceCarousel extends StatelessWidget {
   const ServiceCarousel({super.key, required this.services}); 

   final List<Service> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(bottom: 10),
                itemCount: services.length,
                itemBuilder: (ctx, index) {
                  return ServiceCard(service: services[index]);
                }
              )
            )
          ),
        const SizedBox(height: 10)
      ],
    );
  }
}