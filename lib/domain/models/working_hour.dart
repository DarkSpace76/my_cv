class WorkingHour {
  DateTime? begin;
  DateTime? end;

  WorkingHour({this.begin, this.end});

  static WorkingHour? workingHourFromJson(Map<String, dynamic>? json) {
    return json == null
        ? null
        : WorkingHour(
            begin: json['begin'] == null
                ? null
                : DateTime.parse(json['begin'] as String),
            end: json['end'] == null
                ? null
                : DateTime.parse(json['end'] as String),
          );
  }
}
