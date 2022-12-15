import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:love_calcuator/Homepage/controller/namecontroller.dart';
import 'package:love_calcuator/Homepage/view/resultpage_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  TextEditingController yourName = TextEditingController();
  TextEditingController partnerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.3,
            centerTitle: true,
            title: const Text("Calculate your Love", style: TextStyle(fontSize: 24)),
            flexibleSpace: Container(
                decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: <Color>[Colors.pink, Colors.purple]),
            ))),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.gif"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Center(
                          child: SizedBox(
                              height: MediaQuery.of(context).size.height / 2.5,
                              width: MediaQuery.of(context).size.width - 10,
                              child: Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.transparent),
                                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                                        gradient: const LinearGradient(colors: [
                                          Color.fromARGB(255, 247, 99, 148),
                                          Color.fromARGB(255, 255, 106, 95),
                                          Color.fromARGB(255, 223, 91, 247)
                                        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 25, width: 25, child: Image.asset("assets/images/love1.png")),
                                            const SizedBox(width: 5),
                                            SizedBox(
                                                width: 200,
                                                height: 40,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: TextFormField(
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Georgia",
                                                      ),
                                                      controller: yourName,
                                                      decoration: const InputDecoration(
                                                          border: UnderlineInputBorder(),
                                                          hintText: '  Your Name',
                                                          hintTextDirection: TextDirection.ltr,
                                                          hintStyle: TextStyle(fontSize: 15, fontFamily: "Georgia", color: Colors.white))),
                                                ))
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 40, width: 30, child: Image.asset("assets/images/love2.png")),
                                            const SizedBox(width: 5),
                                            SizedBox(
                                                width: 200,
                                                height: 40,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: TextFormField(
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontFamily: "Georgia",
                                                      ),
                                                      controller: partnerName,
                                                      decoration: const InputDecoration(
                                                          border: UnderlineInputBorder(),
                                                          hintText: "  Your Partner's Name",
                                                          hintTextDirection: TextDirection.ltr,
                                                          hintStyle: TextStyle(fontSize: 15, fontFamily: "Georgia", color: Colors.white))),
                                                ))
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        SizedBox(
                                          height: 40,
                                          width: 100,
                                          child: AnimatedButton(
                                            onPress: () async {
                                              FocusScopeNode currentFocus = FocusScope.of(context);
                                              if (!currentFocus.hasPrimaryFocus) {
                                                currentFocus.unfocus();
                                              }
                                              await Future.delayed(const Duration(milliseconds: 1000));
                                              var result = NameController.controlName(yourName.text, partnerName.text);
                                              Get.to(() => ResultPage(result: result),
                                                  transition: Transition.fade, duration: const Duration(milliseconds: 800));
                                            },
                                            height: 70,
                                            width: 200,
                                            text: 'CALCULATE',
                                            isReverse: true,
                                            selectedTextColor: Colors.white,
                                            selectedBackgroundColor: Colors.pink,
                                            transitionType: TransitionType.CENTER_ROUNDER,
                                            textStyle: const TextStyle(fontSize: 17, color: Colors.white),
                                            backgroundColor: Colors.transparent,
                                            borderColor: Colors.white,
                                            borderWidth: 1,
                                            borderRadius: 10,
                                          ),
                                        )
                                      ],
                                    )),
                              ))),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 20,
                        height: 40,
                        child: ElevatedButton(onPressed: () {}, child: const Text("Details")))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
