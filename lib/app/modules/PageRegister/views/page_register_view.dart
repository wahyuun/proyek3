import 'dart:convert';

import 'package:app_ukm/app/modules/home/views/home_view.dart';
import 'package:app_ukm/app/modules/login/views/login_view.dart';
import 'package:app_ukm/app/modules/pageUKM/views/page_u_k_m_view.dart';
import 'package:app_ukm/app/modules/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../rounded_button.dart';
import '../../services/globals.dart';
import '../controllers/page_register_controller.dart';
import '../../login/views/login_view.dart';
import 'package:http/http.dart'as http;


class PageRegisterView extends StatefulWidget{
  const PageRegisterView({Key? key}) : super(key: key);
  @override
  _PageRegisterViewState createState()=> _PageRegisterViewState();
}

class _PageRegisterViewState extends State<PageRegisterView> {
    String _email = '';
    String _password = '';
    String _name = '';

    
    createAccountPressed() async {
      bool emailValid = RegExp('').hasMatch(_email);
      if (emailValid) {
        http.Response response = await AuthServices.register(_name, _email, _password);
        Map responseMap = jsonDecode(response.body);
        if (response.statusCode==200) {
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (BuildContext context)=> const PageUKMView(),
          ));
        }else{
          errorSnackBar(context, responseMap.values.first[0]);
        }
      }else{
        errorSnackBar(context, 'email tidak valid');
      }
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Daftar',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
      body: Padding (
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        children: [
          const SizedBox(
            height: 20,
            ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Name',
            ),
            onChanged: (value){
              _name = value;
            },
          ),

          const SizedBox(
            height: 30,
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
            onChanged: (value){
              _email = value;
            },
          ),


          const SizedBox(
            height: 40,
          ),
          TextField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Password',
            ),
            onChanged: (value){
              _password = value;
            },
          ),

          const SizedBox(
            height: 40,
          ),
          RoundedButton(
            btnText: "Daftar", 
            onBtnPressed: ()=> createAccountPressed(),
          ),

          const SizedBox(
            height: 40,
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context)=> SizedBox(child: const LoginView()),
                  ));
            },

            child: const Text(
              'Sudah Punya Akun',
              style: TextStyle(
                decoration: TextDecoration.underline,
              )
              
            ),
          )
        ],
        ),
      ),
    );
    }

}
