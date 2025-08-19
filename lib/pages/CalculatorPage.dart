import 'package:flutter/material.dart';
import 'package:latihan1/controller/calculator_controller.dart';
import 'package:latihan1/widget/widgetbutton.dart';
import 'package:latihan1/widget/textfield.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  final String hasil;
  CalculatorPage({super.key, this.hasil = ""});

  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Textfield(
              hint: "angka1",
              controller: calculatorController.txtangka1,
            ),
            Textfield(
              hint: "angka2",
              controller: calculatorController.txtangka2,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  textColor: Colors.white,
                  textt: "+",
                  press: calculatorController.tambah,
                  color: Colors.blueAccent,
                ),
                const SizedBox(width: 10),
                CustomButton(
                  textColor: Colors.white,
                  textt: "-",
                  press: calculatorController.kurang,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  textColor: Colors.white,
                  textt: "x",
                  press: calculatorController.kali,
                  color: Colors.blueAccent,
                ),
                const SizedBox(width: 10),
                CustomButton(
                  textColor: Colors.white,
                  textt: "/",
                  press: calculatorController.bagi,
                  color: Colors.blueAccent,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Obx(() {
              return Text(
                'hasil: ${calculatorController.hasil.value}',
                style: const TextStyle(fontSize: 20),
              );
            }),
            const SizedBox(height: 20),
            CustomButton(
              textColor: Colors.white,
              textt: "Clear",
              press: () {
                calculatorController.clear();
              },
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
