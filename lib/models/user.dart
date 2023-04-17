class User{
  String name;
  int? year;
  List<String>? profesions;

  User({
    required this.name,
    this.year,
    this.profesions
  // ignore: unnecessary_null_comparison
  }):assert(name != null);
}