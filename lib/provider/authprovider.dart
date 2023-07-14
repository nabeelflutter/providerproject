import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
class AuthProvider with ChangeNotifier{
   bool _loading = false;
   bool _isshow = false;
   bool get isshow => _isshow;

   void visible(){
     _isshow = !_isshow;
     notifyListeners();
   }
   bool get loading => _loading;
   setloading(bool val){
     _loading = val;
     notifyListeners();
   }
  void login(String email,String password) async{
      setloading(true);
    try{
      Response response = await post(Uri.parse('https://reqres.in/api/login'),body: {
        'email' : email,
        'password' : password
      });
      if(response.statusCode == 200){
        print('Successfully');
        setloading(false);
      }
      else{
        setloading(false);
        print('Successfully faild');
      }
    }
        catch(e){
          setloading(false);
      print(e);
        }
  }
}