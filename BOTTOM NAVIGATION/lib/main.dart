//Maulidya Indah Wulandari
//2211102098

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: _title, home: MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Nama: Maulidya Indah Wulandari', style: optionStyle),
    Text('NIM: 2211102098', style: optionStyle),
    Text('Warna Favorit: Navy', style: optionStyle),
    Text('Hobi: Membaca', style: optionStyle),
    Text('Asal Kota: Tegal', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavigationBar Sample')),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Maulidya Indah Wulandari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: '2211102098',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'Navy'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Membaca'),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Tegal',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
