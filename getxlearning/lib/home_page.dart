import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/second_page.dart';


import 'controller/tap_controller.dart';
import 'first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    TapController controller=Get.put(TapController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
        //  width: double.maxFinite,
         // height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 49,),
              GetBuilder<TapController>(
                builder: (_){
                  return Container(
                    margin: EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff89dad0)
                    ),
                    child: Center(child: Text(controller.x.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),)),

                  );
                },

              ),
              GestureDetector(
                onTap: (){
                  controller.increase();
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                  ),
                  child: Center(child: Text("tap",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

                ),
              ), 
              GestureDetector(
                onTap: (){
                  Get.to(()=>FirstPage());
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                  ),
                  child: Center(child: Text("Go to First page",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.to(()=>SecondPage());
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                  ),
                  child: Center(child: Text("Second Page",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0)
                  ),
                  child: Center(child: Text("tap",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),)),

                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
