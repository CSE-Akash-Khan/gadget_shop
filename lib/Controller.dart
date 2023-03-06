import 'package:get/get.dart';

import 'headphoneModel.dart';

class HeadPhoneController extends GetxController{

  // var headPhoneData = HeadphoneModel.headphone();
  var headPhoneData = headphone();
  var headPhoneDemoData = headphone_demo();

  var headPhoneDataList = <HeadphoneModel>[].obs;
  var headPhoneDemoDataList = <HeadphoneModel>[].obs;
  var qq = 0.obs;

  loadHeadPhoneData(){
    for(int i = 0; i<headPhoneData.length; i++){
      headPhoneDataList.add(headPhoneData[i]);
    }
  }

  loadHeadPhoneDemoData(){
    for(int i = 0; i<headPhoneDemoData.length; i++){
      headPhoneDemoDataList.add(headPhoneDemoData[i]);
    }
  }

  void increaseQuantity(int index){
    headPhoneDataList[index].q++;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadHeadPhoneData();
    loadHeadPhoneDemoData();
  }
}