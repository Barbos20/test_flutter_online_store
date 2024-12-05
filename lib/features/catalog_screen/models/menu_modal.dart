import 'package:test_online_store/features/catalog_screen/models/sub_menu_modal.dart';

class MenuModal {
  const MenuModal({
    this.title,
    required this.nameType,
    required this.listSubtitle,
  });

  final String? title;
  final String nameType;
  final List<SubMenuModal> listSubtitle;
}
