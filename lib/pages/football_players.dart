import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/controller/football_controller.dart';
import 'package:latihan1/models/football_model.dart';
import 'football_edit_page.dart';

class FootballPage extends StatelessWidget {
  FootballPage({Key? key}) : super(key: key);
  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("My Football Players"),
        backgroundColor: Colors.blueAccent,
        elevation: 5,
      ),
      body: Obx(() {
        return ListView.builder(
          padding: EdgeInsets.all(12),
          itemCount: footballController.players.length,
          itemBuilder: (context, index) {
            FootballPlayer player = footballController.players[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(player.profileImage),
                ),
                title: Text(
                  player.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(
                  "${player.position} | No. ${player.jerseyNumber}",
                  style: TextStyle(color: Colors.grey[700], fontSize: 14),
                ),
                trailing: Icon(Icons.edit, color: Colors.blueAccent),
                onTap: () {
                  Get.to(
                    () => FootballEditPage(),
                    arguments: {'index': index, 'player': player},
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}
