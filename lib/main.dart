import 'package:flutter/material.dart';

//Main function
void main() {
  runApp(App());
}

//App and material widget
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement createElement
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }
}

//Body widget
class HomeScreen extends StatelessWidget {

  _buildSettings(IconData icon, String text) {
    return Column(
      children: [
        Icon(icon, size: 40, color: Colors.lightBlue),
        Text(
          text.toUpperCase(),
          style: TextStyle(fontSize: 16, color: Colors.lightBlue),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // implementations
    Widget Mail = _buildSettings(Icons.mail, "mail");
    Widget Call = _buildSettings(Icons.call, "call");
    Widget Fav = _buildSettings(Icons.favorite, "favorite");
    return Column(
      children: [
        Image.asset('assets/imgs/Villa-Maya-Siargao.webp'),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sairgao Villa Maya',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Siargao, philipens',
                      style: TextStyle(color: Colors.grey[400]),
                    )
                  ],
                ),
              ),
              Icon(
                Icons.star,
                color: Colors.red[400],
                size: 35,
              ),
              Text(
                '4.1',
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Mail, Call, Fav],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 28),
          child: Text(
            'Villa Maya Offers 5 private & exclusive suites overlooking breathtaking views,  a 12 meter infinity pool and our unique par 3 golf course. The villa is Located on top of a private peaceful hill just a few minutes away from the beach and the famous cloud 9 surf spot.',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
