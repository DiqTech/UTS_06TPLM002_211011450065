import 'package:flutter/material.dart';

void main() {
  runApp(ShoeApp());
}

class ShoeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoe List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shoes'),
          actions: [
            CircleAvatar(
              backgroundImage: AssetImage(
                  'images/profile.jpg'), // Replace with your profile image in assets
            ),
            SizedBox(width: 16),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
        ),
        body: ShoeList(),
      ),
    );
  }
}

class ShoeList extends StatelessWidget {
  final List<Map<String, String>> shoes = [
    {
      "name": "Nike SB Zoom Blazer Mid Premium",
      "price": "₹8,795",
      "image": "images/shoes1.jpg",
      "color": "#D7C2F2"
    },
    {
      "name": "Nike Air Zoom Pegasus",
      "price": "₹9,995",
      "image": "images/shoes2.jpg",
      "color": "#C1E7E3"
    },
    {
      "name": "Nike ZoomX Vaporfly",
      "price": "₹18,695",
      "image": "images/shoes3.jpg",
      "color": "#FFD7D7"
    },
    {
      "name": "Nike Air Force 1 S50",
      "price": "₹6,295",
      "image": "images/shoes4.jpg",
      "color": "#E8E8E8"
    },
    {
      "name": "Nike Waffle One",
      "price": "₹8,295",
      "image": "images/shoes5.jpg",
      "color": "#FCE4A3"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoes.length,
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, index) {
        final shoe = shoes[index];
        return Card(
          color: Color(int.parse(shoe['color']!.replaceAll("#", "0xFF"))),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: EdgeInsets.only(bottom: 16),
          child: ListTile(
            contentPadding: EdgeInsets.all(16),
            title: Text(
              shoe['name']!,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              shoe['price']!,
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            trailing: Image.asset(
              shoe['image']!,
              width: 60,
              height: 60,
            ),
          ),
        );
      },
    );
  }
}
