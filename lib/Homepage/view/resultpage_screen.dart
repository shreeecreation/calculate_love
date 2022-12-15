import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:love_calcuator/Homepage/controller/namecontroller.dart';
import 'package:love_calcuator/Homepage/view/homepage_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ResultPage extends StatelessWidget {
  dynamic result;
  ResultPage({super.key, required this.result});
  @override
  Widget build(BuildContext context) {
    var a = result;
    return Scaffold(
        appBar: AppBar(
            elevation: 0.3,
            centerTitle: true,
            title: const Text("Result", style: TextStyle(fontSize: 24)),
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
                              height: MediaQuery.of(context).size.height / 2,
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
                                        SizedBox(
                                          height: 80,
                                          width: 150,
                                          child: CircularPercentIndicator(
                                            radius: 40.0,
                                            animation: true,
                                            animationDuration: 1200,
                                            lineWidth: 8.0,
                                            percent: a == "NaN" ? 0 : a / 100,
                                            center: Text(
                                              "${a.toString()}%",
                                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                                            ),
                                            circularStrokeCap: CircularStrokeCap.butt,
                                            backgroundColor: Colors.yellow,
                                            progressColor: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(ResultController.controlresult(a == "NaN" ? 0 : a / 100),
                                              textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, color: Colors.white)),
                                        ),
                                        const SizedBox(height: 20),
                                        SizedBox(
                                          height: 40,
                                          width: 120,
                                          child: AnimatedButton(
                                            onPress: () async {
                                              Get.offAll(() => HomePage(),
                                                  transition: Transition.fadeIn, duration: const Duration(milliseconds: 800));
                                            },
                                            height: 70,
                                            width: 200,
                                            text: 'RECALCULATE',
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
