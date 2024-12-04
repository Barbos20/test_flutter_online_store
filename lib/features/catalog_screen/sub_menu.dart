import 'package:flutter/material.dart';
import 'package:test_online_store/utils/app_text_style.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({
    required this.title,
    required this.listSubtitle,
    super.key,
  });
  final String title;
  final List<String> listSubtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: AppTextStyles.raleway700.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ).copyWith(
          top: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: listSubtitle.asMap().entries.map(
            (entry) {
              final index = entry.key;
              final itemMenu = entry.value;
              return Padding(
                padding: EdgeInsets.only(
                  bottom: index == listSubtitle.length - 1 ? 0 : 32,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    itemMenu,
                    style: AppTextStyles.raleway600.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
