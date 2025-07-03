import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Constants/space.dart';
import 'package:snap_shot/Core/Shared%20Views/Widgets/Itesm%20Details/color_item.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class ColorWidget extends StatefulWidget {
  const ColorWidget({super.key});

  final List<Color> itemsColors = const [Colors.blue, Colors.black, Colors.red];

  @override
  State<ColorWidget> createState() => ColorWidgetState();
}

class ColorWidgetState extends State<ColorWidget> {
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
        Text('Color', style: Fonts.instance.font18_700Black),
        Space.instance.vertical12,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(widget.itemsColors.length, (index) {
            return ColorItem(
              color: widget.itemsColors[index],
              isActive: activeIndex == index,
              onTap: () => _onSizeSelected(index),
            );
          }),
        )
      ],
    );
  }
}
