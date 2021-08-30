import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';

void configureAppDebug() {
  FirebaseFunctions.instance.useFunctionsEmulator(origin: 'localhost:5001');

  FirebaseFirestore.instance.settings = Settings(host: 'localhost:8080', sslEnabled: false);
}
