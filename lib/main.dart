import 'package:flutter/material.dart';

void main() {
  runApp(BiddingApp());
}

class BiddingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      title: 'Bidding Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bidding Page'),
        ),
        body: MaximumBid(),
      ),
    );
  }
}

class MaximumBid extends StatefulWidget {
  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 100; // Initial bid value

  void _increaseBid() {
    setState(() {
      _currentBid += 50; // Increment bid by $50
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Current Maximum Bid:',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            '\$$_currentBid', // Display the current bid
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _increaseBid,
            child: Text('Increase Bid by \$50'),
          ),
        ],
      ),
    );
  }
}
