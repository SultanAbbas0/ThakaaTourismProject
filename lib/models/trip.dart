class TripModel {
  String Country;
  String City;
  String Budget;
  String From;
  String To;
  String Month;

  TripModel(
      {required this.Country,
      required this.City,
      required this.Budget,
      required this.From,
      required this.To,
      required this.Month});

  factory TripModel.fromFirestore(Map<String, dynamic> data) {
    return TripModel(
      City: data['City'],
      Budget: data['Budget'],
      Country: data['Country'],
      Month: data['Month'],
      From: data['From'],
      To: data['To'],
    );
  }
}
