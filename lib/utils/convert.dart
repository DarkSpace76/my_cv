List<String>? mapToList(List<dynamic>? json) {
  return json?.map((e) => e as String).toList();
}
