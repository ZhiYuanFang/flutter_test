import 'package:english_words/english_words.dart';

class ItemModule{
  bool _select;
  String _name;

  ItemModule(this._select, this._name);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  bool get select => _select;

  set select(bool value) {
    _select = value;
  }


}