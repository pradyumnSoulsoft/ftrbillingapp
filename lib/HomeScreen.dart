import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Container(
        //   margin: EdgeInsets.all(8.0),
        //   child: Image.asset(
        //     'assets/images/ic_launcher.webp', // Replace with the path to your logo image
        //     height: 40.0, // Adjust the height as needed
        //   ),
        // ),
        title: Text('Dashboard',
          style: TextStyle(
            fontSize: 24.0, // Adjust the font size as needed
            fontWeight: FontWeight.bold, // Adjust the font weight as needed
            fontStyle: FontStyle.italic, // Adjust the font style as needed
            color: Colors.yellow, // Adjust the font color as needed
            fontFamily: 'IndieFlower', // Use a custom font if needed

          ),
          // style: TextStyle(
          //   fontSize: 24.0, // Adjust the font size as needed
          //   fontWeight: FontWeight.bold, // Adjust the font weight as needed
          //   fontStyle: FontStyle.italic, // Adjust the font style as needed
          //   // color: Colors.blue, // Adjust the font color as needed
          //   fontFamily: 'IndieFlower-Regular.ttf', // Use a custom font if needed
          // ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Welcome!',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,

          ),
        ),
      ),
    );
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',
          style: TextStyle(
            fontSize: 24.0, // Adjust the font size as needed
            fontWeight: FontWeight.bold, // Adjust the font weight as needed
            fontStyle: FontStyle.italic, // Adjust the font style as needed
            color: Colors.yellow, // Adjust the font color as needed
            fontFamily: 'IndieFlower', // Use a custom font if needed

          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Items',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            RecentItemsList(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

}

class RecentItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your data
    List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((item) => Card(
        child: ListTile(
          title: Text(item),
          // Add more ListTile properties as needed
        ),
      ))
          .toList(),
    );
  }
}

