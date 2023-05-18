class Entry {
  late String userId;
  late String date;
  late List<String>? existingSymptoms;
  late bool hasCloseContact;
  late String status;

  Entry(
      {required this.userId,
      required this.date,
      required this.existingSymptoms,
      required this.hasCloseContact,
      required this.status});
}



