class AppConst {
  static const String namePattern = r"/^[a-zA-Z]+(?:[ '-][a-zA-Z]+)*$";
  static const String emailPattern =
      r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

  static const String passwordPattern = r'.{9,}$';
  static const String phonePattern = r"^\+?[1-9]\d{1,14}$";
}
