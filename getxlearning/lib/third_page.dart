import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/controller/list_controller.dart';
import 'package:getxlearning/controller/tap_controller.dart';
import 'package:getxlearning/home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {

    TapController controller=Get.find();
    ListController listController=Get.put(ListController());
    
    return Scaffold(

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Obx(() => Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                ),
                child: Center(child: Text("Total value :"+controller.z.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

              ),),


            GestureDetector(
              onTap: (){
                Get.to(MyHomePage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                ),
                child: Center(child: Text("X value :"+controller.x.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

              ),
            ),

             Obx(() => Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                ),
                child: Center(child: Text("Y value :"+controller.y.value.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

              ),),
           
             GestureDetector(
              onTap: (){
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                ),
                child: Center(child: Text("Increase Y",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

              ),
            ),
            GestureDetector(
              onTap: (){
                Get.find<TapController>().totalxy();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                ),
                child: Center(child: Text("Total X+Y",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

              ),
            ),
            GestureDetector(
              onTap: (){
                listController.setValues(controller.z);
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                ),
                child: Center(child: Text("Save Total",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
