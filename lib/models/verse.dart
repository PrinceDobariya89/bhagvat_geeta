import 'dart:convert';

class Verse {
    String? id;
    int? chapter;
    int? verse;
    String? slok;
    String? transliteration;
    Tej? tej;
    Siva? siva;
    Adi? purohit;
    Chinmay? chinmay;
    Adi? san;
    Adi? adi;
    Adi? gambir;
    Anand? madhav;
    Anand? anand;
    Rams? rams;
    Abhinav? raman;
    Abhinav? abhinav;
    Abhinav? sankar;
    Anand? jaya;
    Anand? vallabh;
    Anand? ms;
    Anand? srid;
    Anand? dhan;
    Anand? venkat;
    Anand? puru;
    Anand? neel;

    Verse({
        this.id,
        this.chapter,
        this.verse,
        this.slok,
        this.transliteration,
        this.tej,
        this.siva,
        this.purohit,
        this.chinmay,
        this.san,
        this.adi,
        this.gambir,
        this.madhav,
        this.anand,
        this.rams,
        this.raman,
        this.abhinav,
        this.sankar,
        this.jaya,
        this.vallabh,
        this.ms,
        this.srid,
        this.dhan,
        this.venkat,
        this.puru,
        this.neel,
    });

    factory Verse.fromRawJson(String str) => Verse.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Verse.fromJson(Map<String, dynamic> json) => Verse(
        id: json["_id"],
        chapter: json["chapter"],
        verse: json["verse"],
        slok: json["slok"],
        transliteration: json["transliteration"],
        tej: json["tej"] == null ? null : Tej.fromJson(json["tej"]),
        siva: json["siva"] == null ? null : Siva.fromJson(json["siva"]),
        purohit: json["purohit"] == null ? null : Adi.fromJson(json["purohit"]),
        chinmay: json["chinmay"] == null ? null : Chinmay.fromJson(json["chinmay"]),
        san: json["san"] == null ? null : Adi.fromJson(json["san"]),
        adi: json["adi"] == null ? null : Adi.fromJson(json["adi"]),
        gambir: json["gambir"] == null ? null : Adi.fromJson(json["gambir"]),
        madhav: json["madhav"] == null ? null : Anand.fromJson(json["madhav"]),
        anand: json["anand"] == null ? null : Anand.fromJson(json["anand"]),
        rams: json["rams"] == null ? null : Rams.fromJson(json["rams"]),
        raman: json["raman"] == null ? null : Abhinav.fromJson(json["raman"]),
        abhinav: json["abhinav"] == null ? null : Abhinav.fromJson(json["abhinav"]),
        sankar: json["sankar"] == null ? null : Abhinav.fromJson(json["sankar"]),
        jaya: json["jaya"] == null ? null : Anand.fromJson(json["jaya"]),
        vallabh: json["vallabh"] == null ? null : Anand.fromJson(json["vallabh"]),
        ms: json["ms"] == null ? null : Anand.fromJson(json["ms"]),
        srid: json["srid"] == null ? null : Anand.fromJson(json["srid"]),
        dhan: json["dhan"] == null ? null : Anand.fromJson(json["dhan"]),
        venkat: json["venkat"] == null ? null : Anand.fromJson(json["venkat"]),
        puru: json["puru"] == null ? null : Anand.fromJson(json["puru"]),
        neel: json["neel"] == null ? null : Anand.fromJson(json["neel"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "chapter": chapter,
        "verse": verse,
        "slok": slok,
        "transliteration": transliteration,
        "tej": tej?.toJson(),
        "siva": siva?.toJson(),
        "purohit": purohit?.toJson(),
        "chinmay": chinmay?.toJson(),
        "san": san?.toJson(),
        "adi": adi?.toJson(),
        "gambir": gambir?.toJson(),
        "madhav": madhav?.toJson(),
        "anand": anand?.toJson(),
        "rams": rams?.toJson(),
        "raman": raman?.toJson(),
        "abhinav": abhinav?.toJson(),
        "sankar": sankar?.toJson(),
        "jaya": jaya?.toJson(),
        "vallabh": vallabh?.toJson(),
        "ms": ms?.toJson(),
        "srid": srid?.toJson(),
        "dhan": dhan?.toJson(),
        "venkat": venkat?.toJson(),
        "puru": puru?.toJson(),
        "neel": neel?.toJson(),
    };
}

class Abhinav {
    String? author;
    String? sc;
    String? et;
    String? ht;

    Abhinav({
        this.author,
        this.sc,
        this.et,
        this.ht,
    });

    factory Abhinav.fromRawJson(String str) => Abhinav.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Abhinav.fromJson(Map<String, dynamic> json) => Abhinav(
        author: json["author"],
        sc: json["sc"],
        et: json["et"],
        ht: json["ht"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "sc": sc,
        "et": et,
        "ht": ht,
    };
}

class Adi {
    String? author;
    String? et;

    Adi({
        this.author,
        this.et,
    });

    factory Adi.fromRawJson(String str) => Adi.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Adi.fromJson(Map<String, dynamic> json) => Adi(
        author: json["author"],
        et: json["et"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "et": et,
    };
}

class Anand {
    String? author;
    String? sc;

    Anand({
        this.author,
        this.sc,
    });

    factory Anand.fromRawJson(String str) => Anand.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Anand.fromJson(Map<String, dynamic> json) => Anand(
        author: json["author"],
        sc: json["sc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "sc": sc,
    };
}

class Chinmay {
    String? author;
    String? hc;

    Chinmay({
        this.author,
        this.hc,
    });

    factory Chinmay.fromRawJson(String str) => Chinmay.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Chinmay.fromJson(Map<String, dynamic> json) => Chinmay(
        author: json["author"],
        hc: json["hc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "hc": hc,
    };
}

class Rams {
    String? author;
    String? ht;
    String? hc;

    Rams({
        this.author,
        this.ht,
        this.hc,
    });

    factory Rams.fromRawJson(String str) => Rams.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Rams.fromJson(Map<String, dynamic> json) => Rams(
        author: json["author"],
        ht: json["ht"],
        hc: json["hc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
        "hc": hc,
    };
}

class Siva {
    String? author;
    String? et;
    String? ec;

    Siva({
        this.author,
        this.et,
        this.ec,
    });

    factory Siva.fromRawJson(String str) => Siva.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Siva.fromJson(Map<String, dynamic> json) => Siva(
        author: json["author"],
        et: json["et"],
        ec: json["ec"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "et": et,
        "ec": ec,
    };
}

class Tej {
    String? author;
    String? ht;

    Tej({
        this.author,
        this.ht,
    });

    factory Tej.fromRawJson(String str) => Tej.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Tej.fromJson(Map<String, dynamic> json) => Tej(
        author: json["author"],
        ht: json["ht"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
    };
}
