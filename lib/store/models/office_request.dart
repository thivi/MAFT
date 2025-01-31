class OfficeRequestModel {
  List<Office> photos;

  OfficeRequestModel({
    this.photos,
  });

  factory OfficeRequestModel.fromJson(List<dynamic> parsedJson) {
    List<Office> photos = new List<Office>();
    photos = parsedJson.map((i) => Office.fromJson(i)).toList();

    return new OfficeRequestModel(photos: photos);
  }
}

class Office {
  int electionId;
  int officeId;
  String officeName;
  String officeType;

  Office({this.electionId, this.officeId, this.officeName, this.officeType});

  factory Office.fromJson(Map<String, dynamic> json) {
    return new Office(
      electionId: json['id'],
      officeId: json['officeId'],
      officeName: json['officeName'],
      officeType: json['officeType'],
    );
  }
}
