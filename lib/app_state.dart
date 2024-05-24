import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _reminderList = prefs.getStringList('ff_reminderList') ?? _reminderList;
    });
    _safeInit(() {
      _timeSetVar = prefs.containsKey('ff_timeSetVar')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_timeSetVar')!)
          : _timeSetVar;
    });
    _safeInit(() {
      _timeVariableVisible =
          prefs.getBool('ff_timeVariableVisible') ?? _timeVariableVisible;
    });
    _safeInit(() {
      _platsSwitch = prefs.getBool('ff_platsSwitch') ?? _platsSwitch;
    });
    _safeInit(() {
      _timeSwitch = prefs.getBool('ff_timeSwitch') ?? _timeSwitch;
    });
    _safeInit(() {
      _dateSwitch = prefs.getBool('ff_dateSwitch') ?? _dateSwitch;
    });
    _safeInit(() {
      _tShirtSwitch = prefs.getBool('ff_tShirtSwitch') ?? _tShirtSwitch;
    });
    _safeInit(() {
      _shoeSwitch = prefs.getBool('ff_shoeSwitch') ?? _shoeSwitch;
    });
    _safeInit(() {
      _waterSwitch = prefs.getBool('ff_waterSwitch') ?? _waterSwitch;
    });
    _safeInit(() {
      _oneDaySwitch = prefs.getBool('ff_oneDaySwitch') ?? _oneDaySwitch;
    });
    _safeInit(() {
      _oneWeekSwitch = prefs.getBool('ff_oneWeekSwitch') ?? _oneWeekSwitch;
    });
    _safeInit(() {
      _noSwitch = prefs.getBool('ff_noSwitch') ?? _noSwitch;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _reminderList = [];
  List<String> get reminderList => _reminderList;
  set reminderList(List<String> value) {
    _reminderList = value;
    prefs.setStringList('ff_reminderList', value);
  }

  void addToReminderList(String value) {
    _reminderList.add(value);
    prefs.setStringList('ff_reminderList', _reminderList);
  }

  void removeFromReminderList(String value) {
    _reminderList.remove(value);
    prefs.setStringList('ff_reminderList', _reminderList);
  }

  void removeAtIndexFromReminderList(int index) {
    _reminderList.removeAt(index);
    prefs.setStringList('ff_reminderList', _reminderList);
  }

  void updateReminderListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _reminderList[index] = updateFn(_reminderList[index]);
    prefs.setStringList('ff_reminderList', _reminderList);
  }

  void insertAtIndexInReminderList(int index, String value) {
    _reminderList.insert(index, value);
    prefs.setStringList('ff_reminderList', _reminderList);
  }

  DateTime? _timeSetVar;
  DateTime? get timeSetVar => _timeSetVar;
  set timeSetVar(DateTime? value) {
    _timeSetVar = value;
    value != null
        ? prefs.setInt('ff_timeSetVar', value.millisecondsSinceEpoch)
        : prefs.remove('ff_timeSetVar');
  }

  bool _timeVariableVisible = true;
  bool get timeVariableVisible => _timeVariableVisible;
  set timeVariableVisible(bool value) {
    _timeVariableVisible = value;
    prefs.setBool('ff_timeVariableVisible', value);
  }

  bool _platsSwitch = false;
  bool get platsSwitch => _platsSwitch;
  set platsSwitch(bool value) {
    _platsSwitch = value;
    prefs.setBool('ff_platsSwitch', value);
  }

  bool _timeSwitch = false;
  bool get timeSwitch => _timeSwitch;
  set timeSwitch(bool value) {
    _timeSwitch = value;
    prefs.setBool('ff_timeSwitch', value);
  }

  bool _dateSwitch = false;
  bool get dateSwitch => _dateSwitch;
  set dateSwitch(bool value) {
    _dateSwitch = value;
    prefs.setBool('ff_dateSwitch', value);
  }

  bool _tShirtSwitch = false;
  bool get tShirtSwitch => _tShirtSwitch;
  set tShirtSwitch(bool value) {
    _tShirtSwitch = value;
    prefs.setBool('ff_tShirtSwitch', value);
  }

  bool _shoeSwitch = false;
  bool get shoeSwitch => _shoeSwitch;
  set shoeSwitch(bool value) {
    _shoeSwitch = value;
    prefs.setBool('ff_shoeSwitch', value);
  }

  bool _waterSwitch = false;
  bool get waterSwitch => _waterSwitch;
  set waterSwitch(bool value) {
    _waterSwitch = value;
    prefs.setBool('ff_waterSwitch', value);
  }

  bool _oneDaySwitch = false;
  bool get oneDaySwitch => _oneDaySwitch;
  set oneDaySwitch(bool value) {
    _oneDaySwitch = value;
    prefs.setBool('ff_oneDaySwitch', value);
  }

  bool _oneWeekSwitch = false;
  bool get oneWeekSwitch => _oneWeekSwitch;
  set oneWeekSwitch(bool value) {
    _oneWeekSwitch = value;
    prefs.setBool('ff_oneWeekSwitch', value);
  }

  bool _noSwitch = false;
  bool get noSwitch => _noSwitch;
  set noSwitch(bool value) {
    _noSwitch = value;
    prefs.setBool('ff_noSwitch', value);
  }

  double _Progress = 0.0;
  double get Progress => _Progress;
  set Progress(double value) {
    _Progress = value;
  }

  bool _ttsModeActive = false;
  bool get ttsModeActive => _ttsModeActive;
  set ttsModeActive(bool value) {
    _ttsModeActive = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
