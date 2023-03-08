

import 'package:get/get.dart';

class HeadphoneModel extends GetxController {
  int q = 1;
  String? img;
  String? title;
  int? price;
  int? quantity;

  HeadphoneModel(
      {required this.img,
      required this.title,
      required this.price,
      required this.quantity});
}

List<HeadphoneModel> headphoneData = [
    HeadphoneModel(
        img: "images/headphone/headphone1.png",
        title: "AIAIAI TMA-2 Wireless Headphone",
        price: 1900,
        quantity: 0),
    HeadphoneModel(
        img: "images/headphone/headphone2.png",
        title: "Akg N7OONCM2 Wireless Headphone",
        price: 2100,
        quantity: 0),
    HeadphoneModel(
        img: "images/headphone/headphone3.png",
        title: "Boat headphone Wireless Headphone",
        price: 2500,
        quantity: 0),
    HeadphoneModel(
        img: "images/headphone/headphone4.png",
        title: "Boat headphone Wireless Headphone",
        price: 1600,
        quantity: 0),
  ];

List<HeadphoneModel>headphoneDemoData = [
HeadphoneModel(
img: "images/headphone/headphone4.png",
title: "AIAIAI TMA-2 Wireless Headphone",
price: 1600,
quantity: 0),
HeadphoneModel(
img: "images/headphone/headphone3.png",
title: "Akg N7OONCM2 Wireless Headphone",
price: 1600,
quantity: 0),
HeadphoneModel(
img: "images/headphone/headphone1.png",
title: "Boat headphone Wireless Headphone",
price: 1800,
quantity: 0),
HeadphoneModel(
img: "images/headphone/headphone2.png",
title: "Boat headphone Wireless Headphone",
price: 2100,
quantity: 0),
];