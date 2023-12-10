import 'package:flutter/material.dart';

class InterestElement extends StatefulWidget {
  final Widget name;
  final bool isSelected;
  final ValueChanged<bool> onSelected;
  const InterestElement(
      {super.key, required this.name, required this.isSelected, required this.onSelected}); 

  @override
  State<InterestElement> createState() => _InterestElement();
}

class _InterestElement extends State<InterestElement> {
  bool _selected = false;

  @override
  void initState() {
    super.initState();
    _selected = widget.isSelected;
  }

   @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: widget.name,
      selected: _selected,
      onSelected: (bool selected) {
        setState(() {
          _selected = selected;
          widget.onSelected(selected);
        });
      }
    );
  }
}