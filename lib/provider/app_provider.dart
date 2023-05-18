import 'package:flutter/material.dart';
import 'package:project/model/model_entry.dart';

class AppProvider with ChangeNotifier {
  static String _currentDate = "May 13, 2023";
  static bool _enteredEntry = true;

  static int _entryCount = 2;
  List<String> _probableSymptoms = ["Fever", "Feeling feverish", "Muscle or joint pains", "Cough", "Colds", "Sore throat", "Difficulty of breathing", "Loss of taste", "Loss of smell"]; 

  final List<Entry> _entryList = [
    Entry(
        userId: "2021-12345",
        date: "May 13, 2023",
        existingSymptoms: ["Feeling feverish", "Cough", "Colds", "Sore throat", "Difficulty of breathing"],
        hasCloseContact: false,
        status: "Under Monitoring"),
    Entry(
        userId: "2021-12345",
        date: "May 12, 2023",
        existingSymptoms: ["Fever", "Cough", "Colds"],
        hasCloseContact: false,
        status: "Quarantined"),
  ];

  get getEntryCount => _entryCount;
  get getEntryList => _entryList;
  get getCurDate => _currentDate;
  get hasEnteredEntry => _enteredEntry;
  get getProbSymptoms => _probableSymptoms;

  Entry getEntry(int index) => _entryList[index];
  void incrementEntryCount() => _entryCount++;
}
