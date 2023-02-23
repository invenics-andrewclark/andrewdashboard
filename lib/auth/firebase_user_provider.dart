import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DashboardAndrewFirebaseUser {
  DashboardAndrewFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DashboardAndrewFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DashboardAndrewFirebaseUser> dashboardAndrewFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DashboardAndrewFirebaseUser>(
      (user) {
        currentUser = DashboardAndrewFirebaseUser(user);
        return currentUser!;
      },
    );
