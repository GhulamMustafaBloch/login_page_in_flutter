import 'package:flutter/material.dart';

void main(){
  runApp(Login());
}

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.fromLTRB(70, 15, 70, 15),
            backgroundColor: Colors.purple,
          )
        )
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Container(
                      child: Image.asset("assets/images/developers.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 2.2,
                          fontWeight: FontWeight.w800
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  //   child: Column(
                  //       children: <Widget>[
                  //         Text("data"),
                  //       ],
                  //     ),
                  // ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                ),
                icon: Icon(Icons.perm_contact_cal),
                hintText: 'username'
              ),
            ),
          ),
          SizedBox(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  icon: Icon(Icons.mail_rounded),
              ),
            ),
          ),
          SizedBox(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                ),
                icon: Icon(Icons.shopify_sharp),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {

          }, child: Text(
              "Log in",
            style: TextStyle(
              color: Colors.white,
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Forgot Password", style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 50, 0),
                child: Text("Don't Have an Account?", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                ),),
              ),
            ],
          )
        ],
      ),
    );
  }
}