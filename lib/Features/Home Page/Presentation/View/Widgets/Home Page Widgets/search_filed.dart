import 'package:flutter/material.dart';
import 'package:snap_shot/Core/Widgets/search_icon.dart';
import 'package:snap_shot/Core/Widgets/text_form_filed.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppTextField(
      label: 'Search',
      prefixIcon: SearchIcon(),
    );
  }
}
