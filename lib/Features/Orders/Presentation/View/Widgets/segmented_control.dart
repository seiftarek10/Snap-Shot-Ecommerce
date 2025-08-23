import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';

class SegmentedControl extends StatefulWidget {
  final ValueChanged<int>? onChanged; // callback
  const SegmentedControl({super.key, this.onChanged});

  @override
  State<SegmentedControl> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int selectedIndex = 0; 

  @override
  Widget build(BuildContext context) {
    double width = context.width * 0.9;
    double height = context.height * 0.07;

    return Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(children: [
          // Animated background
          AnimatedAlign(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            alignment: selectedIndex == 0
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Container(
              width: (width - 8) / 2, // half the width minus padding
              height: height - 8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(26),
              ),
            ),
          ),

          // Foreground row with clickable labels
          Row(children: [
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  setState(() => selectedIndex = 0);
                  widget.onChanged?.call(0);
                },
                child: Center(
                  child: Text(
                    "Current",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: selectedIndex == 0 ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      setState(() => selectedIndex = 1);
                      widget.onChanged?.call(1);
                    },
                    child: Center(
                        child: Text(
                      "History",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == 1 ? Colors.black : Colors.white,
                      ),
                    ))))
          ])
        ]));
  }
}
