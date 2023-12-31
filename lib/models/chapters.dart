// To parse this JSON data, do
//
//     final chapters = chaptersFromJson(jsonString);

import 'dart:convert';

List<Chapters> chaptersFromJson(String str) => List<Chapters>.from(json.decode(str).map((x) => Chapters.fromJson(x)));

String chaptersToJson(List<Chapters> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Chapters {
    int? chapterNumber;
    int? versesCount;
    String? name;
    String? translation;
    String? transliteration;
    Meaning? meaning;
    Meaning? summary;

    Chapters({
        this.chapterNumber,
        this.versesCount,
        this.name,
        this.translation,
        this.transliteration,
        this.meaning,
        this.summary,
    });

    factory Chapters.fromJson(Map<String, dynamic> json) => Chapters(
        chapterNumber: json["chapter_number"],
        versesCount: json["verses_count"],
        name: json["name"],
        translation: json["translation"],
        transliteration: json["transliteration"],
        meaning: json["meaning"] == null ? null : Meaning.fromJson(json["meaning"]),
        summary: json["summary"] == null ? null : Meaning.fromJson(json["summary"]),
    );

    Map<String, dynamic> toJson() => {
        "chapter_number": chapterNumber,
        "verses_count": versesCount,
        "name": name,
        "translation": translation,
        "transliteration": transliteration,
        "meaning": meaning?.toJson(),
        "summary": summary?.toJson(),
    };
}

class Meaning {
    String? en;
    String? hi;

    Meaning({
        this.en,
        this.hi,
    });

    factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
        en: json["en"],
        hi: json["hi"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
        "hi": hi,
    };
}
