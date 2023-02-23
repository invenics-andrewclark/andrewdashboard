import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _captainArea = prefs.getString('ff_captainArea') ?? _captainArea;
    _captainState = prefs.getString('ff_captainState') ?? _captainState;
    _captainDistrict =
        prefs.getString('ff_captainDistrict') ?? _captainDistrict;
    _workerSkills = prefs.getStringList('ff_workerSkills') ?? _workerSkills;
    _workerExperience =
        prefs.getStringList('ff_workerExperience') ?? _workerExperience;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _captainArea = '';
  String get captainArea => _captainArea;
  set captainArea(String _value) {
    _captainArea = _value;
    prefs.setString('ff_captainArea', _value);
  }

  String _captainState = '';
  String get captainState => _captainState;
  set captainState(String _value) {
    _captainState = _value;
    prefs.setString('ff_captainState', _value);
  }

  String _captainDistrict = '';
  String get captainDistrict => _captainDistrict;
  set captainDistrict(String _value) {
    _captainDistrict = _value;
    prefs.setString('ff_captainDistrict', _value);
  }

  List<String> _workerSkills = [];
  List<String> get workerSkills => _workerSkills;
  set workerSkills(List<String> _value) {
    _workerSkills = _value;
    prefs.setStringList('ff_workerSkills', _value);
  }

  void addToWorkerSkills(String _value) {
    _workerSkills.add(_value);
    prefs.setStringList('ff_workerSkills', _workerSkills);
  }

  void removeFromWorkerSkills(String _value) {
    _workerSkills.remove(_value);
    prefs.setStringList('ff_workerSkills', _workerSkills);
  }

  void removeAtIndexFromWorkerSkills(int _index) {
    _workerSkills.removeAt(_index);
    prefs.setStringList('ff_workerSkills', _workerSkills);
  }

  List<String> _workerExperience = [];
  List<String> get workerExperience => _workerExperience;
  set workerExperience(List<String> _value) {
    _workerExperience = _value;
    prefs.setStringList('ff_workerExperience', _value);
  }

  void addToWorkerExperience(String _value) {
    _workerExperience.add(_value);
    prefs.setStringList('ff_workerExperience', _workerExperience);
  }

  void removeFromWorkerExperience(String _value) {
    _workerExperience.remove(_value);
    prefs.setStringList('ff_workerExperience', _workerExperience);
  }

  void removeAtIndexFromWorkerExperience(int _index) {
    _workerExperience.removeAt(_index);
    prefs.setStringList('ff_workerExperience', _workerExperience);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
