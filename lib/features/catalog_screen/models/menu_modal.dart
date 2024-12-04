class MenuModal {
  const MenuModal({
    this.title,
    required this.nameType,
    required this.listSubtitle,
  });

  final String? title;
  final String nameType;
  final List<String> listSubtitle;
}
