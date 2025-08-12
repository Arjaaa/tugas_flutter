import 'package:get/get.dart';
import 'package:latihan1/models/football_model.dart'; // sesuaikan path

class FootballController extends GetxController {
  var players = <FootballPlayer>[
    FootballPlayer(
      name: "Lionel Messi",
      profileImage:
          "https://i.pinimg.com/736x/8b/c8/b8/8bc8b8d5f77fb6563158faba6d782101.jpg",
      position: "Forward",
      jerseyNumber: 10,
    ),
    FootballPlayer(
      name: "Cristiano Ronaldo",
      profileImage:
          "https://i.pinimg.com/736x/d4/44/74/d444741c23262349c05fc4e805db4b61.jpg",
      position: "Forward",
      jerseyNumber: 7,
    ),
    FootballPlayer(
      name: "Neymar Jr",
      profileImage:
          "https://i.pinimg.com/1200x/66/8a/47/668a473311301543e325c44a858e9875.jpg",
      position: "Forward",
      jerseyNumber: 11,
    ),
    FootballPlayer(
      name: "Kylian Mbappé",
      profileImage:
          "https://i.pinimg.com/736x/6b/1c/c5/6b1cc5de877e5cfc7259b75c90af44db.jpg",
      position: "Forward",
      jerseyNumber: 7,
    ),
    FootballPlayer(
      name: "Robert Lewandowski",
      profileImage:
          "https://i.pinimg.com/1200x/bf/72/8b/bf728b20628de224555a79ee39e7e3eb.jpg",
      position: "Striker",
      jerseyNumber: 9,
    ),
  ].obs;

  void updatePlayer(int index, FootballPlayer newPlayer) {
    players[index] = newPlayer;
    players.refresh();
  }
}
