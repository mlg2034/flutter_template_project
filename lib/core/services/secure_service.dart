import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class _AppKey {
  static const String accessToken = 'accessToken';
  static const String refreshToken = 'refreshToken';
}

class SecureService {
  static const _storage = FlutterSecureStorage();

  Future<void> setAccessToken(String? value) {
    if (value != null) {
      return _storage.write(key: _AppKey.accessToken, value: value);
    } else {
      return _storage.delete(key: _AppKey.accessToken);
    }
  }

  Future<void> setRefreshToken(String? value) {
    if (value != null) {
      return _storage.write(key: _AppKey.refreshToken, value: value);
    } else {
      return _storage.delete(key: _AppKey.refreshToken);
    }
  }

  Future<String?> getAccessToken() => _storage.read(key: _AppKey.accessToken);

  Future<String?> getRefreshToken() => _storage.read(key: _AppKey.refreshToken);

  Future<void> deleteAccessToken() => _storage.delete(key: _AppKey.accessToken);

  Future<void> deleteRefreshToken() =>
      _storage.delete(key: _AppKey.refreshToken);
}
