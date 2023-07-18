class AuthController {
  final FirebaseAuth _auth = FireBaseAuth.instance;
  Future<String> signUpUsers(String email, String password, String fullName,
      String studID, String phoneNumber) async {
    String res = 'Some error occured';
    try {
      if (email.isNotEmpty &&
          fullName.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          studID.isNotEmpty &&
          phoneNumber.isNotEmpty) {
        //Create users
        UserCredential cred = await _auth.createUserWithEmailandPassword(
            email: email, password: password);
      } else {
        res = 'Please fill in the empty fields';
      }
    } catch (e) {}
    return res;
  }
}
