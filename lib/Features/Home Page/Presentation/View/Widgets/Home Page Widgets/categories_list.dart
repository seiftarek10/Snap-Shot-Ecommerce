import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Extensions/context_extensions.dart';
import 'package:snap_shot/Features/Home%20Page/Presentation/View/Widgets/Home%20Page%20Widgets/category.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  static final List<String> _categories = ['All', 'Man', 'Women', 'Kids'];

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.07,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoriesList._categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Category(
                categoryName: CategoriesList._categories[index],
                isSelected: index == selectedIndex,
                index: index,
                currentIndex: (i) {
                  setState(() {
                    selectedIndex = i;
                  });
                }),
          );
        },
      ),
    );
  }
}
