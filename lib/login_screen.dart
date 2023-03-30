// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/login.png"),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffeb0a07).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ("Usuário"),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xffeb0a07).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ("Senha"),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    )),
                  ),
                ),
                SizedBox(height: 50),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffeb0a07),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text("Entrar",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 2,
                              color: Colors.black54)),
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            )));
  }
}
