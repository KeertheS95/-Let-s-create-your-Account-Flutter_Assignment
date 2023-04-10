import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(explicitToJson: true)
class Root {
  final String genres;
  final String name;

  Root({
    required this.genres,
    required this.name,
  });
  factory Root.fromJson(Map<String, dynamic> json) => _$RootFromJson(json);

  Map<String, dynamic> toJson() => _$RootToJson(this);
}


// class Root 
//   Data? data;

//   Root({this.data});

//   Root.fromJson(Map<String, dynamic> json) {
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }

// class Data {
//   List<Genres>? genres;

//   Data({this.genres});

//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['genres'] != null) {
//       genres = <Genres>[];
//       json['genres'].forEach((v) {
//         genres!.add(new Genres.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.genres != null) {
//       data['genres'] = this.genres!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Genres {
//   String? name;

//   Genres({this.name});

//   Genres.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     return data;
//   }
// }












// /* 
// // Example Usage
// Map<String, dynamic> map = jsonDecode(<myJSONString>);
// var myRootNode = Root.fromJson(map);
// */
// class Data {
//   List<Genre?>? genres;

//   Data({this.genres});

//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['genres'] != null) {
//       genres = <Genre>[];
//       json['genres'].forEach((v) {
//         genres!.add(Genre.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['genres'] =
//         genres != null ? genres!.map((v) => v?.toJson()).toList() : null;
//     return data;
//   }
// }

// class Genre {
//   String? name;

//   Genre({this.name});

//   Genre.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['name'] = name;
//     return data;
//   }
// }

// class Root {
//   Data? data;

//   Root({this.data});

//   Root.fromJson(Map<String, dynamic> json) {
//     data = json['data'] != null ? Data?.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['data'] = data!.toJson();
//     return data;
//   }
// }














// class Genre {
//   Data? data;

//   Genre({this.data});

//   Genre.fromJson(Map<String, dynamic> json) {
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     return data;
//   }
// }

// class Data {
//   List<Genres>? genres;

//   Data({this.genres});

//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['genres'] != null) {
//       genres = new List<Genres>();
//       json['genres'].forEach((v) {
//         genres!.add(new Genres.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.genres != null) {
//       data['genres'] = this.genres!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Genres {
//   String? name;

//   Genres({this.name});

//   Genres.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     return data;
//   }
// }
