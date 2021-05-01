import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ms0/authFev.dart';
import 'package:ms0/main2.dart';
class SignUP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUp();
  }
}

class _SignUp extends State<SignUP> {
  String check(){
    if (mail==null || mail.isEmpty){
      return "Enter an email";
    }else if (pass==null || pass.isEmpty ){
      return "Password is Required";
    }else if(pass.length < 6) {
      return "Password should be at least 6 characters";
    }else
      return null;
  }
  Future signUpWithMail() async{
    return AuthFev().signUpWithMail(mail, pass);
  }
  Future signInWithMail() async{
    return AuthFev().signInWithMail(mail, pass);
  }
  String mail , pass;
  final logo = Image.asset("assets/logo.png", width: 250, height: 250);
//
  String validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
                children: [
                  SizedBox(height: 60),
                  logo,
                  Form(
                  child: Column(
                  children: [
                  SizedBox(height: 48),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    onChanged: (val){
                      setState(() {
                        mail = val;
                      });
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                      contentPadding: EdgeInsets.fromLTRB(
                          20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    autofocus: false,
                    onChanged: (val){
                      setState(() {
                        pass = val;
                      });
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      contentPadding: EdgeInsets.fromLTRB(
                          20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: FloatingActionButton(
                          onPressed: ()async{
                            String msg = check();
                            if (msg !=null){
                              Fluttertoast.showToast(
                                  msg: msg,
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM);
                            }else{
                              dynamic res = await signUpWithMail();
                              if (res != null){
                                await signInWithMail();
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (_) => SecondScreen()));                              }
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text('Register', style: TextStyle(color: Colors.white)),
                        )),
                  ),
                ]))])));
  }
}