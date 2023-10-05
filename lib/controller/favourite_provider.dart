import 'package:bhagvat_geeta/models/favourite.dart';
import 'package:flutter/foundation.dart';

class FavouriteProvider extends ChangeNotifier {
  List<Favourite> favouriteList = [];
  
  void addFavourite(Favourite favourite) {
    favouriteList.add(favourite);
    notifyListeners();
  }

  bool findById(Favourite favourite) {
    return favouriteList.contains(favourite);
  }
}
