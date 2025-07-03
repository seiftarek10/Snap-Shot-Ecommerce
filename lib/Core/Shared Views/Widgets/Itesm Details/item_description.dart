import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Style/colors.dart';
import 'package:snap_shot/Core/Style/fonts.dart';

class Description extends StatefulWidget {
  final String description;
  final int trimLines;

  const Description({
    super.key,
    required this.description,
    this.trimLines = 3,
  });

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool _isExpanded = false;
  bool _isOverflowing = false;

  @override
  Widget build(BuildContext context) {
    final style =
        Fonts.instance.font14_500White.copyWith(color: AppColors.instance.grey);

    return LayoutBuilder(builder: (context, constraints) {
      final textSpan = TextSpan(text: widget.description, style: style);
      final textPainter = TextPainter(
        text: textSpan,
        maxLines: widget.trimLines,
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: constraints.maxWidth);

      _isOverflowing = textPainter.didExceedMaxLines;

      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Description',
          style: Fonts.instance.font20White.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.instance.black,
          ),
        ),
        const SizedBox(height: 8),
        AnimatedCrossFade(
          firstChild: Text(
            widget.description,
            maxLines: widget.trimLines,
            overflow: TextOverflow.ellipsis,
            style: style,
          ),
          secondChild: Text(
            widget.description,
            style: style,
          ),
          crossFadeState: _isExpanded || !_isOverflowing
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 200),
        ),
        if (_isOverflowing) ...[
          const SizedBox(height: 4),
          GestureDetector(
              onTap: () => setState(() => _isExpanded = !_isExpanded),
              child: Text(
                _isExpanded ? 'Read less' : 'Read more',
                style: Fonts.instance.font14_500Black,
              ))
        ]
      ]);
    });
  }
}
