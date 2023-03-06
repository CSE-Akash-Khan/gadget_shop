import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';
import 'HeadphoneDetails.dart';
class HomePageHeaphone extends StatelessWidget {
  HomePageHeaphone({Key? key}) : super(key: key);
  HeadPhoneController headPhoneController = Get.put(HeadPhoneController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            padding: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.5),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                  // color: Colors.grey.withOpacity(.5),
                border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Icon(Icons.search,color: Colors.black,),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Text("Hi-Fi Shop & Service",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            Text("Audio shop on Rustaveli Ave 57.",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w400),),
            SizedBox(height: 10,),
            Text("This hop offers both products and services",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w400)),
            SizedBox(height: 40,),
            Row(
              children: [
                Row(
                  children: [
                    Text("Products",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                    Text(" 41",style: TextStyle(color: Colors.black54,fontSize: 24,fontWeight: FontWeight.w400))
                  ],
                ),
                Spacer(),
                Text("Show all",style: TextStyle(color: Colors.blue,fontSize: 16),),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 220,
              // color: Colors.yellow,
              child: ListView.builder(
                // physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 10),
                // shrinkWrap: true,
                itemCount: headPhoneController.headPhoneData.length,
                itemBuilder: (context, index) {
                 var headPhoneData =  headPhoneController.headPhoneDataList[index];

                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HeadPhoneDetails(headPhoneData,index),));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 100,
                        width: 180,
                        // color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.4),
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(headPhoneData.img.toString()),
                              ),
                            ),
                            SizedBox(height: 11,),
                            Text(headPhoneData.title.toString(),style: TextStyle(fontSize: 16),),
                            SizedBox(height: 10,),
                            Text(headPhoneData.price.toString())
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Row(
                  children: [
                    Text("Accessories",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                    Text(" 19",style: TextStyle(color: Colors.black54,fontSize: 24,fontWeight: FontWeight.w400))
                  ],
                ),
                Spacer(),
                Text("Show all",style: TextStyle(color: Colors.blue,fontSize: 16),),
              ],
            ),
            SizedBox(height: 16,),
            Container(
              width: double.infinity,
              height: 220,
              // color: Colors.yellow,
              child: ListView.builder(
                // physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 10),
                // shrinkWrap: true,
                itemCount: headPhoneController.headPhoneDemoDataList.length,
                itemBuilder: (context, index) {
                  var headphoneDemo =  headPhoneController.headPhoneDemoDataList[index];

                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HeadPhoneDetails(headphoneDemo,index),));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 100,
                        width: 180,
                        // color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 130,
                              width: 180,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.4),
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(headphoneDemo.img.toString()),
                              ),
                            ),
                            SizedBox(height: 11,),
                            Text(headphoneDemo.title.toString(),style: TextStyle(fontSize: 16),),
                            SizedBox(height: 10,),
                            Text(headphoneDemo.price.toString())
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
