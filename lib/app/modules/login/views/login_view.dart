import 'dart:convert';

import 'package:app_ukm/app/modules/home/views/home_view.dart';
import 'package:app_ukm/app/modules/services/auth_services.dart';
import 'package:app_ukm/app/modules/services/globals.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../pageUKM/views/page_u_k_m_view.dart';
import '../controllers/login_controller.dart';
import 'package:http/http.dart'as http;



class LoginView extends StatefulWidget{
  const LoginView({Key? key}) : super(key: key);
  @override
  _LoginViewState createState()=> _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String _email = '';
  String _password = '';

  loginPressed() async {
      if (_email.isNotEmpty && _password.isNotEmpty) {
        http.Response response = await AuthServices.login(_email, _password);
        Map responseMap = jsonDecode(response.body);
        if (response.statusCode==200) {
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (BuildContext context)=> const PageUKMView(),
          ));
        }else{
          errorSnackBar(context, responseMap.values.first);
        }
      }else{
        errorSnackBar(context, 'enter all required fields');
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image.asset("assets/img/loginPage.png"),
          SizedBox(height: 90),
          
            Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: 
                    EdgeInsets.only(top:20,bottom: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(Icons.mail),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                    hintText: "Email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 0,
                        color: Colors.blue,
                        style: BorderStyle.solid
                      ),
                    ),
                  ),
                onChanged: (value){
                  _email = value;
                },
                ),
              ),
              SizedBox(height: 8),
            Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    // suffix: IconButton(
                    //   onPressed: (){},
                    //   padding: const EdgeInsets.only(right: 30),
                    //   icon: Icon(Icons.remove_red_eye_outlined),
                    // ),
                    contentPadding: 
                    EdgeInsets.only(top:20,bottom: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Icon(Icons.lock),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.7),
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        width: 0.1,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                onChanged: (value){
                  _password = value;
                },
                ),
              ),

          SizedBox(height:31),
          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            width: Get.width,
            child: ElevatedButton(
              onPressed: () => loginPressed(),
              child: Text("Masuk",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16
              ),),
              style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              primary: Color(0xFF075CAD),
              padding: EdgeInsets.symmetric(
                vertical: 20,
                ),
              ),),
          ),
          SizedBox(height:11),

          Container(
            child: TextButton(
              onPressed: (){},
              child: Text("Lupa Password ?",
              style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w400,
            ),
              ),
            ),
            alignment: Alignment.topRight,
            
          ),
        SizedBox(height:150),
        Container(
          child: 
            Text("@UKM POLINDRA 2022",
            textAlign: TextAlign.center,
            ),
        ),
        ],
      ),
    );
  }
}
