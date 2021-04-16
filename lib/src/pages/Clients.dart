import 'package:flutter/material.dart';
import 'dart:ui';

class ClientsPage extends StatefulWidget {
  @override
  createState() {
    return _ClientsPage();
  }
}

class _ClientsPage extends State<ClientsPage> {
  int _currentIndex = 1;
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
            _cardT1(
                title: 'Buenos Días Amor',
                description:
                    'Que tiene tu cara, que ha perdido el color amor amor amor y no dice nadaQue tiene tu cara, que ha perdido el color amor amor amor y no dice nada'),
            _cardT1(
                title: 'Buenos Días Amor',
                description:
                    'Que tiene tu cara, que ha perdido el color amor amor amor y no dice nadaQue tiene tu cara, que ha perdido el color amor amor amor y no dice nada'),
            _cardT1(
                title: 'Buenos Días Amor',
                description:
                    'Que tiene tu cara, que ha perdido el color amor amor amor y no dice nadaQue tiene tu cara, que ha perdido el color amor amor amor y no dice nada'),
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
              case 2:
                Navigator.pushNamed(context, 'appts');
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
            Navigator.pushNamed(context, 'new-client');
          },
          backgroundColor: Colors.white),
    );
  }

  Widget _cardT1({title, description}) {
    return Card(
        elevation: 0,
        color: Colors.white.withOpacity(0.3),
        child: Column(children: <Widget>[
          Container(
              height: 100,
              color: Colors.white.withOpacity(0.3),
              child: ListTile(
                leading:
                    Icon(Icons.account_circle, color: Colors.white, size: 50),
                title: Text(title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    )),
                subtitle:
                    Text(description, style: TextStyle(color: Colors.black)),
              )),
        ]));
  }
}
