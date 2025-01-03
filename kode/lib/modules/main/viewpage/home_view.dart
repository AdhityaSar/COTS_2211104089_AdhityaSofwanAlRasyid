import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Find services, food, or places',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('GoPay', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text('Tap for history', style: TextStyle(color: Color(0xFF00AA13))),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildGoPayButton(Icons.add, 'Top Up'),
                      _buildGoPayButton(Icons.send, 'Pay'),
                      _buildGoPayButton(Icons.explore, 'Explore'),
                    ],
                  ),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(16),
              children: [
                _buildServiceIcon(Icons.motorcycle, 'GoRide'),
                _buildServiceIcon(Icons.car_rental, 'GoCar'),
                _buildServiceIcon(Icons.restaurant, 'GoFood'),
                _buildServiceIcon(Icons.local_shipping, 'GoSend'),
                _buildServiceIcon(Icons.shopping_cart, 'GoMart'),
                _buildServiceIcon(Icons.phone_android, 'GoPulsa'),
                _buildServiceIcon(Icons.star, 'GoClub'),
                _buildServiceIcon(Icons.more_horiz, 'More'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Restos near me', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      _buildQuickAction('Restos near me', Icons.restaurant),
                      SizedBox(width: 16),
                      _buildQuickAction('Best-seller in my area', Icons.star),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGoPayButton(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFF00AA13),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildServiceIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, size: 32),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildQuickAction(String label, IconData icon) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, size: 16),
            SizedBox(width: 8),
            Text(label, style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
