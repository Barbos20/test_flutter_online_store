import 'package:flutter/material.dart';
import 'package:test_online_store/features/catalog_screen/models/sub_menu_modal.dart';
import 'package:test_online_store/features/widgets/custom_button.dart';
import 'package:test_online_store/utils/all_text.dart';
import 'package:test_online_store/utils/app_text_style.dart';

class AppointmentButtonsList extends StatefulWidget {
  const AppointmentButtonsList({
    required this.appointmentList,
    required this.selectSort,
    super.key,
  });

  final List<SubMenuModal> appointmentList;
  final Function(String appointment) selectSort;

  @override
  State<AppointmentButtonsList> createState() => _AppointmentButtonsListState();
}

class _AppointmentButtonsListState extends State<AppointmentButtonsList> {
  String? selectedAppointment;

  @override
  void initState() {
    selectedAppointment = AllText.all;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.appointmentList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(left: 12),
              child: CustomButton(
                onTap: () {
                  setState(() {
                    selectedAppointment = AllText.all;
                  });
                  widget.selectSort(AllText.all);
                },
                buttonWidth: 105,
                buttonHeight: 44,
                fillColor: selectedAppointment == AllText.all
                    ? const Color(0xff171717)
                    : const Color(0xffF4F4F4),
                borderColor: selectedAppointment == AllText.all
                    ? const Color(0xff171717)
                    : const Color(0xffF4F4F4),
                borderRadius: 11,
                title: AllText.all,
                textStyle: AppTextStyles.raleway500.copyWith(
                  fontSize: 14,
                  color: selectedAppointment == AllText.all
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            );
          }

          final item = widget.appointmentList[index - 1];
          final isSelected = selectedAppointment == item.name;

          return Padding(
            padding: const EdgeInsets.only(left: 12),
            child: CustomButton(
              onTap: () {
                setState(() {
                  selectedAppointment = item.name;
                });
                widget.selectSort(item.name);
              },
              buttonWidth: 105,
              buttonHeight: 44,
              fillColor: isSelected
                  ? const Color(0xff171717)
                  : const Color(0xffF4F4F4),
              borderColor: isSelected
                  ? const Color(0xff171717)
                  : const Color(0xffF4F4F4),
              borderRadius: 11,
              title: item.name,
              textStyle: AppTextStyles.raleway500.copyWith(
                fontSize: 14,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }
}
