import 'package:finals/pages/home.dart';

class NotesModel {
  String title;
  String time;
  String location;
  String user;
  Roomate roomate;

  NotesModel(
      {required this.title,
      required this.time,
      required this.location,
      required this.user,
      required this.roomate});

  static List<NotesModel> getNotes() {
    List<NotesModel> notes = [];

    notes.add(NotesModel(
        title: 'Dinner with Friends',
        time: '8:00 PM',
        location: 'Sumo Niku',
        user: 'Alexis',
        roomate: const Roomate(letter: 'A')));

    notes.add(NotesModel(
        title: 'Game Night',
        time: '10:00 PM',
        location: 'A&Ks',
        user: 'Kathea',
        roomate: const Roomate(letter: 'K', color: '2370E8',)));

    notes.add(NotesModel(
        title: 'Sleepover',
        time: '10:00 AM',
        location: 'A&Ks',
        user: 'Kathea',
        roomate: const Roomate(letter: 'K', color: '2370E8',)));

    return notes;
  }
}
