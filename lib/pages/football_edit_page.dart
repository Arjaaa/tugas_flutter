import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/controller/football_edit_controller.dart';
import 'package:latihan1/controller/football_controller.dart';

class FootballEditPage extends StatelessWidget {
  FootballEditPage({Key? key}) : super(key: key);
  final FootballEditController editController = Get.put(
    FootballEditController(),
  );
  final FootballController footballController = Get.find<FootballController>();

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>;
    editController.initData(args['index'], args['player']);

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Player'),
        backgroundColor: Colors.blueAccent,
        elevation: 5,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: ListView(
          children: [
            Text(
              "Edit Player Info",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: editController.nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: editController.profileImageController,
              decoration: InputDecoration(
                labelText: 'Profile Image URL',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.image),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: editController.positionController,
              decoration: InputDecoration(
                labelText: 'Position',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.sports_soccer),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: editController.jerseyNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Jersey Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.confirmation_number),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  footballController.updatePlayer(
                    args['index'],
                    editController.updatedPlayer,
                  );
                  Get.back();
                },
                child: Text('Save', style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
