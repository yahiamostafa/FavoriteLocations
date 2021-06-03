import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ms0/authFev.dart';
import 'package:ms0/sign_up.dart';
import 'main2.dart';
class LoginPage extends StatelessWidget {
  String check(){
    if (mail.text.toString()==null || mail.text.toString().isEmpty){
      return "Enter an email";
    }else if (pass.text.toString()==null || pass.text.toString().isEmpty ){
      return "Password is Required";
    }else if(pass.text.toString().length < 6) {
      return "Password should be at least 6 characters";
    }else
      return null;
  }
  @override
  Future<void> resetPassword() async {
    AuthFev().resetPassword(mail.text.toString());
  }
  Future <void> signInWithGoogle() async {
    await AuthFev().signInWithGoogle();
  }
  // Future<void> signInAnonymously() async{
  //   await AuthFev().signInAnonymously();
  // }
  Future signInWithMail() async{
    return AuthFev().signInWithMail(mail.text.toString(), pass.text.toString());
  }
  final TextEditingController mail = new TextEditingController();
  final TextEditingController pass = new TextEditingController();
final logo = Hero(
  tag: 'hero',
  child: CircleAvatar(
    backgroundColor: Colors.transparent,
    radius: 48.0,
    child: Image.asset('assets/logo.png'),
  ),
);
final line = Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    child: Container(
      height: 1.0,
      width: double.infinity,
      color: Colors.black,));
  @override
  Widget build(BuildContext context) {
return Scaffold(
  floatingActionButton: FloatingActionButton(
    child:Icon(Icons.app_registration),
    onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUP()))},
  ),
body:
SingleChildScrollView(
child:Container(
padding: EdgeInsets.only(left: 24.0, right: 24.0),
child: Column(
children: [
SizedBox(height: 60),
logo,
Form(child: Column(
  children: [
SizedBox(height: 48),
    TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: mail,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    ),
SizedBox(height: 8),
    TextFormField(
      autofocus: false,
      controller: pass,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    ),
SizedBox(height: 24),
Container(
width: double.infinity,
child: Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
    child: FloatingActionButton(
      onPressed: () async{
        String msg = check();
        print(mail.text.toString());
        if (msg !=null){
          print(mail.text.toString());
          Fluttertoast.showToast(
              msg: msg,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM);
        }else{
          dynamic res = await signInWithMail();
          if (res != null){
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SecondScreen()));
          }
        }
      },
      heroTag: "f1",
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text('Log In', style: TextStyle(color: Colors.white)),
    )),
),
])),
  TextButton(onPressed: () {
    if (mail.text.toString().isEmpty){
      Fluttertoast.showToast(
          msg: " Enter your email",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM);
    }else{
      resetPassword();
      Fluttertoast.showToast(
          msg: "Check Your mailBox",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM);
    }
  },
      child: Text("forget password?", style: TextStyle(color: Colors.black54))),
line,
SizedBox(height: 30),
Container(
width: double.infinity,
child: Padding(
  padding: EdgeInsets.symmetric(vertical: 16.0),
  child: FloatingActionButton(
      heroTag: "f2",
      backgroundColor: Colors.white,
      onPressed: signInWithGoogle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(child: Row(children: [
        SizedBox(width: 10),
        Padding(padding: EdgeInsets.only(left: 5)),
        Image.asset("assets/google.png"),
        SizedBox(width: 40,),
        Text('Sign in With Google',
            style: TextStyle(color: Colors.blue[700]))
      ]))
  ),
),
),
  SizedBox(height: 12),
  // Container(
  //   width: double.infinity,
  //   child: Padding(
  //     padding: EdgeInsets.symmetric(vertical: 16.0),
  //     child: FloatingActionButton(
  //         heroTag: "f3",
  //         backgroundColor: Colors.white,
  //         onPressed: signInAnonymously,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(24),
  //         ),
  //         child: Center(child: Row(children: [
  //           SizedBox(width: 10),
  //           Padding(padding: EdgeInsets.only(left: 5)),
  //           Image.asset("assets/google.png"),
  //           SizedBox(width: 40,),
  //           Text('Sign in Anonymously',
  //               style: TextStyle(color: Colors.black))
  //         ]))
  //     ),
  //   ),
  // ),
],
),
)
));
  }
}