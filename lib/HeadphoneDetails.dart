import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';
import 'headphoneModel.dart';
class HeadPhoneDetails extends StatefulWidget {

  HeadphoneModel? headphoneModel;
  var index;
  HeadPhoneDetails(this.headphoneModel,this.index);

  @override
  State<HeadPhoneDetails> createState() => _HeadPhoneDetailsState();
}

class _HeadPhoneDetailsState extends State<HeadPhoneDetails> {
  HeadPhoneController headPhoneController = Get.find();

  @override
  Widget build(BuildContext context) {
    var getData = widget.headphoneModel;
    var modelclass = headphone();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Order Details",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text("My Cart",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Container(
              height: 160,
              width: double.infinity,
              // color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    flex:3,
                    child: Container(
                      height: 160,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.4),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(getData!.img.toString()),
                      ),
                    ),
                  ),
                  SizedBox(width: 18,),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(getData.title.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        SizedBox(height: 11,),
                        Obx(()=> Text("\$${getData.price!*headPhoneController.headPhoneDataList[widget.index].q}.00")),
                        // Obx(()=> Text("\$${getData.price}.00")),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){

                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.grey.withOpacity(.4)),
                                    ),
                                    child: Icon(Icons.remove,color: Colors.black54),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Text("${headPhoneController.headPhoneDataList[widget.index].q}",style: TextStyle(color: Colors.black54),)
                                ),
                                InkWell(
                                  onTap: (){
                                    headPhoneController.increaseQuantity(widget.index);
                                    print(getData.q);
                                    headPhoneController.qq.value++;
                                    headPhoneController.headPhoneDataList[widget.index].q++;
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: Colors.grey.withOpacity(.4)),
                                    ),
                                    child: Icon(Icons.add,color: Colors.black54),
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            InkWell(
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.grey.withOpacity(.3)
                                ),
                                child: Icon(Icons.delete_outline,color: Colors.black54,),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Text("Delivery Location",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600)),
            SizedBox(height: 15,),
            ListTile(
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.zero,
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.4),
                    borderRadius: BorderRadius.circular(16)

                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2 Petre Melikishvili St.",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 8,),
                  Text("0162, Tbilisi",style: TextStyle(color: Colors.black54,fontSize: 16),)
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
            ),
            SizedBox(height: 30,),
            Text("Payment Methode",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600)),
            ListTile(
              minVerticalPadding: 20,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.zero,
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.4),
                    borderRadius: BorderRadius.circular(16)

                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("VISA Classic",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 8,),
                  Text("*****-0921",style: TextStyle(color: Colors.black54,fontSize: 16),)
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
            ),
            Spacer(),
            Text("Order Info",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600)),
            SizedBox(height: 30,),
            Row(
              children: [
                Text("Subtotoal",style: TextStyle(color: Colors.black54,fontSize: 18)),
                Spacer(),
                Text("\$ price",style: TextStyle(color: Colors.grey.shade700,fontSize: 18)),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Shipping Cost",style: TextStyle(color: Colors.black54,fontSize: 18)),
                Spacer(),
                Text("+\$ price",style: TextStyle(color: Colors.grey.shade700,fontSize: 18)),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Total",style: TextStyle(color: Colors.black54,fontSize: 18)),
                Spacer(),
                Text("\$ price",style: TextStyle(color: Colors.grey.shade700,fontSize: 30)),

              ],
            ),
            SizedBox(height: 15,),
            MaterialButton(
              onPressed: () {},
              height: 60,
              minWidth: double.maxFinite,
              color: Color(0xff0f52bf),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text("CHECKOUT  (${getData.price})",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
