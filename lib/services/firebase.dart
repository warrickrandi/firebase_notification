import 'package:firebase_messaging/firebase_messaging.dart';

class FireBase {

  FirebaseMessaging firebaseMessaging;

  FireBase(){
    firebaseMessaging = FirebaseMessaging();
    firebaseMessaging.requestNotificationPermissions();

    firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        
      },
      onResume: (Map<String, dynamic> message) async {
        
      },
      onLaunch: (Map<String, dynamic> message) async {
        
      },
    );
    
  }
  
  Future<String> getToken() {
    return firebaseMessaging.getToken();
  }

  FirebaseMessaging getFireBase() {
    return firebaseMessaging;
  }

}