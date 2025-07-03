import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Shared%20Views/Widgets/Itesm%20Details/size_item.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({super.key});

  final List<String> itemsTitles = const ['S', 'M', 'L'];

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  int activeIndex = 0;

  void _onSizeSelected(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Size', style: Fonts.instance.font18_700Black),
        Space.instance.vertical12,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(widget.itemsTitles.length, (index) {
            return SizeItem(
              title: widget.itemsTitles[index],
              isActive: activeIndex == index,
              onTap: () => _onSizeSelected(index),
            );
          }),
        )
      ],
    );
  }
}
