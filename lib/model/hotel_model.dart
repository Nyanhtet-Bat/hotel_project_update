class Hotel {
  String title;
  DateTime startDate;
  DateTime endDate;
  double budget;
  String hotelType;


  Hotel(
      this.title,
      this.startDate,
      this.endDate,
      this.budget,
      this.hotelType
      );

  Map<String, dynamic> toJson() => {
    'title': title,
    'startDate': startDate,
    'endDate': endDate,
    'budget': budget,
    'travelType': hotelType,
  };
}

