import 'package:get/get.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class ReportController extends GetxController {
  var selectedMonth = DateTime.now().obs; // Observable DateTime

  Future<void> pickMonth() async {
    DateTime? pickedMonth = await showMonthPicker(
      context: Get.context!,
      initialDate: selectedMonth.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedMonth != null) {
      selectedMonth.value = pickedMonth; // Update the selected month
    }
  }
}