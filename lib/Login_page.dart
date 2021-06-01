import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //set bakgroung colors
        backgroundColor: Color(0xFFEEEEEE),
        //Stack agar dapat menumpuk banyak widget
        body: Stack(
          children: <Widget>[
            //positioned digunakan untuk mengatur posisi dari widget
            //Posisi bola atas kanan
            Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xFFb226B2), Color(0xFFFF6DA7)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            //Posisi bola atas kiri
            Positioned(
              left: -getBigDiameter(context) / 4,
              top: -getBigDiameter(context) / 4,
              child: Container(
                child: Center(
                  child: Text(
                    "dribble",
                    style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xFFb226B2), Color(0xFFFF6DA7)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            //Posisi bola bawah
            Positioned(
              right: -getBigDiameter(context) / 2,
              bottom: -getBigDiameter(context) / 2,
              child: Container(
                  width: getBigDiameter(context),
                  height: getBigDiameter(context),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Color(0xFFFF4891),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFF4891))),
                              labelText: "Email :",
                              labelStyle: TextStyle(color: Color(0xFFFF4891))),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.vpn_key,
                                color: Color(0xFFFF4891),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFFFF4891))),
                              labelText: "Password :",
                              labelStyle: TextStyle(color: Color(0xFFFF4891))),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(color: Color(0xFFFF4891)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.amber,
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "Sign in",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFb226B2),
                                      Color(0xFFFF6DA7),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          mini: true,
                          elevation: 0,
                          child: Image(
                            image: AssetImage("assets/logofb.png"),
                          ),
                        ),
                        FloatingActionButton(
                          mini: true,
                          onPressed: () {},
                          elevation: 0,
                          child: Image(
                            image: AssetImage("assets/twlogo.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "DON'T HAVE AN ACCOUNT? ",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Color(0xFFFF4891),
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
