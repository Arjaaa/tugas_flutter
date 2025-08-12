import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/models/football_model.dart';

class FootballEditController extends GetxController {
  late int playerIndex;
  late FootballPlayer player;

  late TextEditingController nameController;
  late TextEditingController profileImageController;
  late TextEditingController positionController;
  late TextEditingController jerseyNumberController;

  void initData(int index, FootballPlayer data) {
    playerIndex = index;
    player = data;

    nameController = TextEditingController(text: player.name);
    profileImageController = TextEditingController(text: player.profileImage);
    positionController = TextEditingController(text: player.position);
    jerseyNumberController = TextEditingController(
      text: player.jerseyNumber.toString(),
    );
  }

  FootballPlayer get updatedPlayer => FootballPlayer(
    name: nameController.text,
    profileImage: profileImageController.text,
    position: positionController.text,
    jerseyNumber:
        int.tryParse(jerseyNumberController.text) ?? player.jerseyNumber,
  );

  @override
  void onClose() {
    nameController.dispose();
    profileImageController.dispose();
    positionController.dispose();
    jerseyNumberController.dispose();
    super.onClose();
  }
}
