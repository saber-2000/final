import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/model/user_model.dart';

class FireStoreUser{
  final CollectionReference _userCollectionRef= FirebaseFirestore.instance.collection("Users");
Future <void> addUserFireStore(UserModel userModel)async{
 
return await _userCollectionRef.doc(userModel.userId).set(userModel.toJson());


   }
}