import 'package:get/get.dart';
import 'package:latihan1/models/football_model.dart'; // sesuaikan path

class FootballController extends GetxController {
  var players = <FootballPlayer>[
    FootballPlayer(
      name: "Lionel Messi",
      profileImage:
          "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Lionel_Messi.jpg",
      position: "Forward",
      jerseyNumber: 10,
    ),
    FootballPlayer(
      name: "Cristiano Ronaldo",
      profileImage:
          "https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg",
      position: "Forward",
      jerseyNumber: 7,
    ),
    FootballPlayer(
      name: "Neymar Jr",
      profileImage:
          "https://upload.wikimedia.org/wikipedia/commons/c/c4/Neymar_2018.jpg",
      position: "Forward",
      jerseyNumber: 11,
    ),
    FootballPlayer(
      name: "Kylian Mbappé",
      profileImage:
          "https://upload.wikimedia.org/wikipedia/commons/a/a5/Kylian_Mbappé_2019.jpg",
      position: "Forward",
      jerseyNumber: 7,
    ),
  ].obs;

  void updatePlayer(int index, FootballPlayer newPlayer) {
    players[index] = newPlayer;
    players.refresh(); // pastikan update reactive list
  }
}
