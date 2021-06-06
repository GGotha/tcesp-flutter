class Database {
  bool created = false;

  Future<bool> createDatabase() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
    this.created = true;
    return created;
  }
}
