import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isEmailVerified =
          prefs.getBool('ff_isEmailVerified') ?? _isEmailVerified;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _ListOfImages = [];
  List<String> get ListOfImages => _ListOfImages;
  set ListOfImages(List<String> _value) {
    _ListOfImages = _value;
  }

  void addToListOfImages(String _value) {
    _ListOfImages.add(_value);
  }

  void removeFromListOfImages(String _value) {
    _ListOfImages.remove(_value);
  }

  void removeAtIndexFromListOfImages(int _index) {
    _ListOfImages.removeAt(_index);
  }

  void updateListOfImagesAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_ListOfImages[_index]);
  }

  String _profilePhoto =
      'https://firebasestorage.googleapis.com/v0/b/gooseflutterflow.appspot.com/o/default%2F1248329_50_1_85.jpg?alt=media&token=8837352e-786a-4543-b2ec-09eb4da8f2e3';
  String get profilePhoto => _profilePhoto;
  set profilePhoto(String _value) {
    _profilePhoto = _value;
  }

  bool _isEmailVerified = false;
  bool get isEmailVerified => _isEmailVerified;
  set isEmailVerified(bool _value) {
    _isEmailVerified = _value;
    prefs.setBool('ff_isEmailVerified', _value);
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
