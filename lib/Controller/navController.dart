import 'package:get/get.dart';

class NavController extends GetxController
{
  var selectedItem = 0.obs;

  selectItem(int index)
  {
    selectedItem.value = index;
  }
}