import 'package:get/get.dart';

import 'headphoneModel.dart';

class HeadPhoneController extends GetxController{


  // var headPhoneDataList = <HeadphoneModel>[].obs;
  var headPhoneDemoDataList = <HeadphoneModel>[].obs;
  var headPhoneDataList=<HeadphoneModel>[];
  var quantityList = [].obs;

  loadHeadPhoneData(){
    for(int i = 0; i<headphoneData.length; i++){
      headPhoneDataList.add(headphoneData[i]);
    }
  }
  void increaseQuantity(int index){
    quantityList![index]++;
    headphoneData[index].price! * quantityList[index];
    headPhoneDataList[index].q++;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadHeadPhoneData();
    quantityList.value = List.filled(headPhoneDataList.length, 1);
    // loadHeadPhoneDemoData();
  }
}