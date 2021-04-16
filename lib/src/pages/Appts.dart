import 'package:flutter/material.dart';
import 'dart:ui';

class AppointmentsPage extends StatefulWidget {
  @override
  createState() {
    return _AppointmentsPage();
  }
}

class _AppointmentsPage extends State<AppointmentsPage> {
  int _currentIndex = 2;
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
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text('Citas Pendientes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25)),
            ),
            _cardT1(title: 'Buenos Días Amor1', value: true),
            _cardT1(title: 'Buenos Días Amor2', value: false),
            _cardT1(title: 'Buenos Días Amor3', value: true),
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
              case 3:
                Navigator.pushNamed(context, 'report');
                break;
            }
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.grey),
          onPressed: () {
            Navigator.pushNamed(context, 'new-appt');
          },
          backgroundColor: Colors.white),
    );
  }

  Widget _cardT1({title, value}) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        elevation: 0,
        color: Colors.white.withOpacity(0.3),
        child: Column(children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: CheckboxListTile(
                title: Text(title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    )),
                value: value,
                secondary:
                    Icon(Icons.account_circle, color: Colors.white, size: 45),
                checkColor: Colors.white,
              )),
        ]));
  }
}
