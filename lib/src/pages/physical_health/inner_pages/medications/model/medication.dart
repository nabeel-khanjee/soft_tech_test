class Medications {
  final String title;
  final String dose;
  final String type;
  final bool isNotification;
  final int number;
  final int inEvery;

  Medications(
      {required this.title,
      required this.dose,
      required this.type,
      required this.isNotification,
      required this.number,
      required this.inEvery});
}