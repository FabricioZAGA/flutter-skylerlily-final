import 'package:flutter/material.dart';
import 'dart:ui';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFFFA8BFF), Color(0xFF2BD2FF), Color(0xFF2BFF88)],
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 24,
                spreadRadius: 16,
                color: Colors.black.withOpacity(0.1),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 40.0,
                  sigmaY: 40.0,
                ),
                child: Container(
                  height: 550,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        width: 1.5,
                        color: Colors.white.withOpacity(0.2),
                      )),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 60, horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    blurRadius: 24,
                                    spreadRadius: 16,
                                    color: Colors.black.withOpacity(0.1),
                                  )
                                ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(45.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 40.0,
                                      sigmaY: 40.0,
                                    ),
                                    child: Container(
                                      height: 75,
                                      width: 350,
                                      decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(45.0),
                                          border: Border.all(
                                            width: 1.5,
                                            color:
                                                Colors.white.withOpacity(0.2),
                                          )),
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10, horizontal: 10),
                                              child: Column(
                                                children: <Widget>[
                                                  Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10),
                                                      child: Text('Login',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                          )))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 40),
                                  child: Column(children: <Widget>[
                                    _input(label: "Email"),
                                    _input(label: "Password", lockIcon: true),
                                    _button(context),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      child: FlatButton(
                                        child: Text('¿No tienes cuenta?',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, 'signup');
                                        },
                                      ),
                                    )
                                  ])),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _button(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: () {
          Navigator.pushNamed(context, 'clients');
        },
        color: Colors.white.withOpacity(0.3),
        elevation: 0,
        child: Text(
          "INGRESAR",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
            side: BorderSide(color: Colors.white, width: 1)),
      ),
    );
  }

  Widget _input({label, lockIcon = false}) {
    var _icon;
    if (lockIcon) {
      _icon = Icon(
        Icons.lock,
        color: Colors.white,
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white.withOpacity(0.3),
              hintText: label,
              hintStyle: TextStyle(fontSize: 18.0, color: Colors.white),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
              ),
              suffixIcon: _icon,
              border: OutlineInputBorder()),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
