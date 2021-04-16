import 'package:flutter/material.dart';
import 'dart:ui';

class NewAppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFFFA8BFF), Color(0xFF2BD2FF), Color(0xFF2BFF88)],
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Text('Nueva Cita',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25)),
            ),
            Center(
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
                      height: 420,
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
                                  vertical: 30, horizontal: 10),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Column(children: <Widget>[
                                        _input(label: "Motivo"),
                                        _clientInput(label: "Cliente"),
                                        _dateInput(label: "Fecha Cita"),
                                        _input(label: "Costo"),
                                        _button(),
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
          ],
        ),
      ),
    );
  }

  Widget _button() {
    return Padding(
      padding: EdgeInsets.only(left: 200, top: 40),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: () {},
        color: Colors.white.withOpacity(0.3),
        elevation: 0,
        child: Text(
          "AGREGAR",
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

  Widget _clientInput({label, lockIcon = false}) {
    var _icon = Icon(
      Icons.arrow_drop_down,
      color: Colors.white,
    );
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

  Widget _dateInput({label}) {
    var _icon = Icon(
      Icons.calendar_today,
      color: Colors.white,
    );
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
