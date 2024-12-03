import 'package:flutter/material.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';
import 'package:test_online_store/utils/assets_pictures.dart';

class RowSearch extends StatefulWidget {
  const RowSearch({super.key});

  @override
  State<RowSearch> createState() => _RowSearchState();
}

class _RowSearchState extends State<RowSearch> {
  final textEditingController = TextEditingController();
  final border = UnderlineInputBorder(
    borderSide:
        BorderSide(color: const Color(0xff000000).withOpacity(0.2), width: 1),
  );

  @override
  void dispose() {
    textEditingController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: MediaQuery.of(context).padding.top,
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            controller: textEditingController,
            cursorColor: const Color(0xff000000).withOpacity(0.2),
            decoration: InputDecoration(
              hintText: AllText.search,
              hintStyle: AppTextStyles.raleway500.copyWith(
                color: const Color(0xff000000).withOpacity(0.7),
                fontSize: 18,
              ),
              contentPadding: const EdgeInsets.only(top: 4),
              fillColor: Colors.transparent,
              border: border,
              focusedBorder: border,
              focusedErrorBorder: border,
              disabledBorder: border,
              enabledBorder: border,
              errorBorder: border,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Image.asset(
                  AssetsPictures.magnifyingGlass,
                  color: const Color(0xff000000),
                ),
              ),
              prefixIconConstraints: const BoxConstraints(
                minHeight: 14,
                minWidth: 14,
                maxHeight: 20,
              ),
              prefix: const SizedBox(
                width: 6,
              ),
            ),
          ),
        )
      ],
    );
  }
}
