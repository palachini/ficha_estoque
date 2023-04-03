// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _senhaController = TextEditingController();

  bool _verSenha = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ("E-mail"),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    // validator: (email) { //VAlidacao do email ---https://www.youtube.com/watch?v=ACZOyuw99hw&list=PLzkYgGaQm_BKKNMkYTrSXbJOvYOPar_IM&index=3&ab_channel=EmanuelSeverino
                    //   if (email == null || email.isEmpty) {
                    //     return 'Digite seu e-mail';
                    //   }
                    //   return null;
                    // },
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
                    controller: _senhaController,
                    obscureText: !_verSenha,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ("Senha"),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_verSenha
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined),
                        color: Colors.black.withOpacity(0.5),
                        onPressed: () {
                          setState(() {
                            _verSenha = !_verSenha;
                          });
                        },
                      ),
                    ),
                    // validator: (senha) { Validacao da senha
                    //   if (senha == null || senha.isEmpty) {
                    //     return "Digite sua senha";
                    //   } else if (senha.length <= 6) {
                    //     return 'Digite uma senha mais forte';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
              ),
              SizedBox(height: 45),

              SizedBox(
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffeb0a07),
                  ),
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2,
                        color: Colors.black54),
                  ),
                ),
              ),
              // InkWell(
              //   child: Container(
              //     padding: EdgeInsets.symmetric(horizontal: 10),
              //     height: 55,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //         color: const Color(0xffeb0a07),
              //         borderRadius: BorderRadius.circular(10)),
              //     child: Center(
              //       child: Text("Entrar",
              //           style: TextStyle(
              //               fontSize: 25,
              //               fontWeight: FontWeight.bold,
              //               wordSpacing: 2,
              //               color: Colors.black54)),
              //     ),
              //   ),
              // ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
