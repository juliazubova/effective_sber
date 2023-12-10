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
        SizedBox(
          height: 130,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: services.length,
                itemBuilder: (ctx, index) {
                  return ServiceCard(service: services[index]);
                }
              )
            )
          ),
      ],
    );
  }
}