import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';
import 'headphoneModel.dart';
class HeadPhoneDetails extends StatefulWidget {
  var index;
  HeadphoneModel headphoneModel;
  HeadPhoneDetails(this.index,this.headphoneModel);

  @override
  State<HeadPhoneDetails> createState() => _HeadPhoneDetailsState();
}

class _HeadPhoneDetailsState extends State<HeadPhoneDetails> {
  // HeadPhoneController headPhoneController = Get.find();

  int totalAmount(){
    return widget.headphoneModel.q * widget.headphoneModel.price!;
  }

  @override
  Widget build(BuildContext context) {
    var headphone = widget.headphoneModel;
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
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
      //           SizedBox(width: 15,),
      //           Obx(()=> Text("${headPhoneController.quantityList[widget.index!]}")),
      //           SizedBox(width: 15,),
      //           IconButton(onPressed: (){
      //             headPhoneController.increaseQuantity(widget.index!);
      //           }, icon: Icon(Icons.add)),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
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
                        child: Image.asset("${headphone.img}"),
                      ),
                    ),
                  ),
                  SizedBox(width: 18,),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(headphone.title.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        SizedBox(height: 11,),
                        Text("\$${headphone.price!*headphone.q}.00"),
                        // Obx(()=> Text("\$${headphone.price}.00")),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      if(headphone.q > 1){
                                        headphone.q--;
                                      }
                                    });
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
                                    // child: Obx(()=> Text("${headPhoneController.quantityList[index]}",style: TextStyle(color: Colors.black54),))
                                    child: Text("${headphone.q}",style: TextStyle(color: Colors.black54),)),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      headphone.q++;
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
                Text("\$ ${headphone.price! * headphone.q}",style: TextStyle(color: Colors.grey.shade700,fontSize: 30)),

              ],
            ),
            SizedBox(height: 15,),
            MaterialButton(
              onPressed: () {},
              height: 60,
              minWidth: double.maxFinite,
              color: Color(0xff0f52bf),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text("CHECKOUT  (${totalAmount()})",style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
