import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/controllers/app_controller.dart';
import 'package:getx_basics/pages/about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Dependency Injection
    AppController appController= Get.put(AppController());

    return Scaffold(
      appBar: AppBar(title: const Text("Home page"),backgroundColor: Colors.cyan,foregroundColor: Colors.white,),
       body:Center(
         child: Column(
           children: [
             const SizedBox(height: 20),
             ElevatedButton(
               onPressed: (){
                 Get.snackbar("title", "This is a message using Get.snackbar",
                 snackPosition: SnackPosition.BOTTOM,
                   backgroundColor: Colors.cyan.shade100,
                   margin: const EdgeInsets.all(20.0),
                 );
               },
                 child: const Text("Show Snack bar"),
             ),

             const SizedBox(height: 20),
             ElevatedButton(
               onPressed: () {
                 Get.defaultDialog(
                   title: "Alert",
                   titleStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                   //middleText: "Do you want to Exit?",
                   content: Column(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       const Padding(
                         padding: EdgeInsets.symmetric(vertical: 10.0),
                         child: Text(
                           "Do you want to exit?",
                           style: TextStyle(fontSize: 16),
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           ElevatedButton(
                             onPressed: () {
                               Get.back(); // Close the dialog
                             },
                             child: const Text("Cancel"),
                           ),
                           ElevatedButton(
                             onPressed: () {
                               // Add the logic to exit or any other action
                               Get.back(); // Close the dialog
                             },
                             child: const Text("Exit"),
                           ),
                         ],
                       ),
                     ],
                   ),
                 );
               },
               child: const Text("Show Dialog Box"),
             ),
             
             const SizedBox(height: 30),

             ElevatedButton(
               onPressed: () {
                 Get.to(const AboutPage()); // Close the dialog
               },
               child: const Text("About page"),
             ),

             const SizedBox(height: 30),

             IconButton(
                 onPressed: () {
                   appController.increase();
                 } ,
                 icon: const Icon(Icons.add),
               iconSize: 40,
               color: Colors.blue,

             ),

             Padding(
                 padding: const EdgeInsets.all(20),
               child:
               Obx(()=> Text(
                   appController.num.toString(),
                   style: const TextStyle(fontSize: 32),),
               ),
             
             ),

             IconButton(onPressed: () {
               appController.decrease();
             } ,
                 icon: const Icon(Icons.arrow_back_ios_new_outlined),
               iconSize: 40,
               color: Colors.blue,
             ),


           ],
         )
       ),
    );
  }
}
