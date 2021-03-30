import 'package:flutter/material.dart';
import 'package:fthdaily/main.dart';

class Plans extends StatefulWidget {
  @override
  _PlansState createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlatButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                'Address',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ),
        leading: Icon(Icons.location_on),
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 72,
          ),
          Center(
            child: Image(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.9,
                image: AssetImage('images/plans.png')),
          ),
          Text(
            'You have no subscriptions',
            style: TextStyle(
                color: Color(0xFF7653A3),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          Text(
            'Browse through the store and subscribe',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Container(
            height: 42,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300),
            child: FlatButton(
                hoverColor: Colors.black,
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  });
                },
                child: Text('Go To Store',
                    style: TextStyle(color: Color(0xFF7653A3)))),
          )
        ],
      )),
    );
  }
}
