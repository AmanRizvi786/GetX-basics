import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_basics/pages/home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Page"),backgroundColor: Colors.cyan,foregroundColor: Colors.white,),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.to(const HomePage());
          },
          child: const Text("Goto Home"),
        ),
      ),
    );
  }
}
