import 'package:flutter/material.dart';
import 'package:sber/widgets/interest_element.dart';

class Interests extends StatefulWidget {
  const Interests({super.key, required this.interests});

  final Map<String, bool> interests;

  @override
  State<Interests> createState() => _Interests();
}

class _Interests extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List<Widget>.generate(
              widget.interests.length,
              (int index) => Builder(
                builder: (BuildContext context) {
                  return InterestElement(
                    name: Text(widget.interests.keys.elementAt(index)),
                    isSelected: widget.interests.values.elementAt(index),
                    onSelected: (bool selected) {
                      setState(() {
                        widget.interests[widget.interests.keys.elementAt(index)] = selected;
                      });
                    }
                  );
                }
              )
            ),
          )
        ]
      ),
    );
  }
}