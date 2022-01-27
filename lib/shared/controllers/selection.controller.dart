import 'package:get/get.dart';

class SelectionController extends GetxController {
  var selectedElements = [].obs;

  void selectElement(int index) {
    if (selectedElements.contains(index)) {
      selectedElements.remove(index);
    } else {
      selectedElements.add(index);
    }
  }

  bool hasSelection() {
    return selectedElements.isNotEmpty;
  }

  bool isSelected(int index) {
    return selectedElements.contains(index);
  }

  void unselectElement(int index) {
    selectedElements.remove(index);
  }

  void clearSelection() {
    selectedElements([]);
  }

  void selectAll(int length) {
    if (selectedElements.length != length) {
      for (var i = 0; i < length; i++) {
        if (!selectedElements.contains(i)) {
          selectedElements.add(i);
        }
      }
    } else {
      selectedElements([]);
    }
  }
}
