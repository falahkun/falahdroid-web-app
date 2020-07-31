part of 'services.dart';

class AuthServices extends ChangeNotifier {
  static FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  static final _webStorage = WebStorage.instance;

  static signUp(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim());
    } catch (e) {
      print(e.message);
    }
  }

  static Future<String> signIn(context, {String email, String password}) async {
    try {
      AuthResult _authResult = await _firebaseAuth.signInWithEmailAndPassword(
          email: email.trim(), password: password.trim());

      window.localStorage['SessionId'] = _authResult.user.uid;
      return _authResult.user.uid;
    } catch (e) {
      print(e.message);
      return e.message;
    }
  }

  static signOut() async {
    try {
      await _firebaseAuth.signOut();
      window.localStorage.remove('SessionId');
    } catch (e) {
      print(e.message);
    }
  }

  static Stream<FirebaseUser> get currentUser =>
      _firebaseAuth.onAuthStateChanged;
  static Stream<String> get currentSession =>
      Stream.value(_webStorage.sessionId);
}
