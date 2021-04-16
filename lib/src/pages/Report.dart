import 'package:flutter/material.dart';
import 'dart:ui';

class ReportPage extends StatefulWidget {
  @override
  createState() {
    return _ReportPage();
  }
}

class _ReportPage extends State<ReportPage> {
  int _currentIndex = 3;
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
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Text('Reporte Ingresos Mensuales',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 35)),
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
                      height: 350,
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
                                      padding: EdgeInsets.only(top: 45),
                                      child: Column(children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Text('Ingresos: \$1500',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Text('Citas Completadas: 12',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Text('Citas Canceladas: 5',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20)),
                                        ),
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
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.login_outlined, size: 30),
                label: ' ',
                backgroundColor: Colors.white.withOpacity(0.2)),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Icon(Icons.person_outline, size: 30),
                ),
                label: ' ',
                backgroundColor: Colors.white.withOpacity(0.2)),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(Icons.list_outlined, size: 30),
                ),
                label: ' ',
                backgroundColor: Colors.white.withOpacity(0.2)),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined, size: 30),
                label: ' ',
                backgroundColor: Colors.white.withOpacity(0.2)),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, 'clients');
                break;
              case 2:
                Navigator.pushNamed(context, 'appts');
                break;
            }
          }),
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
}
