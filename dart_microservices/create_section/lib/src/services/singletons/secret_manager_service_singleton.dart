class SecretManagerService {
  /// Static parts
  ///
  static SecretManagerService? _instance;

  static SecretManagerService getInstance(String userId) {
    if (_instance == null) {
      _instance = SecretManagerService(userId);
      return _instance!;
    }
    return _instance!;
  }

  /// Instance parts
  ///
  SecretManagerService(this._userId);

  final String _userId;
}
