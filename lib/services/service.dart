import 'package:bhagvat_geeta/models/chapters.dart';
import 'package:bhagvat_geeta/models/favourite.dart';
import 'package:bhagvat_geeta/models/verse.dart';
import 'package:flutter/services.dart';

class Services {
  Future<List<Chapters>> getChapter() async {
    List<Chapters> chapterList = [];
    var loadChapters = await rootBundle.loadString("assets/chapters/index.json");
    chapterList = chaptersFromJson(loadChapters);
    return chapterList;
  }

  Future<List<Verse>> getVerse(int ch,int verseCount) async{
    List<Verse> verse = [];
    for(int i=1;i<=verseCount;i++){
    var loadVerse = await rootBundle.loadString("assets/slok/$ch/$i.json");
    verse.add(Verse.fromRawJson(loadVerse));
    }
    return verse;
  }

  Future<List<FavouriteList>> getfavourites(List<Favourite> fav) async{
    List<FavouriteList> favourite = [];

    for(int i=1;i<=fav.length;i++){
    var loadVerse = await rootBundle.loadString("assets/slok/${fav[i].chapter}/${fav[i].verse}.json")as FavouriteList;
    favourite.add(loadVerse);
    }

    return favourite;
  }
}
