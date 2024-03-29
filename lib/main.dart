import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ));

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange.shade900,
            Colors.orange.shade800,
            Colors.orange.shade600,
            Colors.white
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 30),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Text(
                        'Login',
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: .5,
                              fontSize: 40),
                        )),

                      SizedBox(
                        height: 10,
                      ),
                      Text("Welcome Back",
                          style: GoogleFonts.nunito(
                              textStyle:
                                  TextStyle(color: Colors.white, fontSize: 22)))
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all((1)),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email or Phone Number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all((1)),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text("Forgot Password?",
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(color: Colors.grey))),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 55,
                            margin: EdgeInsets.symmetric(horizontal: 70),
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade900
                        ),
                          child: Center(
                            child: Text("Login", style: GoogleFonts.nunito(textStyle: TextStyle(color: Colors.white, fontSize: 30,letterSpacing: 1.5,fontWeight: FontWeight.w400)),),
                          ),
                        ),
                        SizedBox(height: 60 ,),
                        Text("Continue with demat account",
                            style: GoogleFonts.nunito(
                                textStyle: TextStyle(color: Colors.grey))),
                        SizedBox(height: 30,),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue
                                ),
                                child: Center(
                                  child: Text("Zerodha", style: GoogleFonts.nunito(textStyle: TextStyle(color: Colors.white, fontSize: 20,letterSpacing: 1.5,fontWeight: FontWeight.w500)),),
                                ),
                              ),
                            ),SizedBox(width: 30,),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green.shade400
                                ),
                                child: Center(
                                  child: Text("Angel one", style: GoogleFonts.nunito(textStyle: TextStyle(color: Colors.white, fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500)),),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
