import 'package:flutter/cupertino.dart';

class FavouritProvider with ChangeNotifier{
  List<int> _isSelected = [];
  List<int> get isSelected => _isSelected;

  void addItemIndex(int index){
    _isSelected.add(index);
    notifyListeners();
  }
  void removeItemIndex(int index){
    _isSelected.remove(index);
    notifyListeners();
  }
}