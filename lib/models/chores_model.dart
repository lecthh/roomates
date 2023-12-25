
class ChoresModel {
  String title;
  String description;
  String time;
  bool isCompleted;

  ChoresModel(
      {required this.title, required this.description, required this.time, this.isCompleted = false});

  static List<ChoresModel> getChores() {
    List<ChoresModel> chores = [];

    chores.add(
        ChoresModel(title: 'Take out trash', description: '', time: '8:00 AM'));

    chores.add(ChoresModel(
      title: 'Get Laundry',
      description: 'Pls get early',
      time: '5:00 AM',
    ));

    chores.add(ChoresModel(
      title: 'Clean',
      description: 'peeps coming over later',
      time: '3:00 PM',
    ));

    return chores;
  }
}
