import 'package:booking_app/PaymentSucesspage.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Payment Method'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select a Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Credit Card Option
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("images/gpay.png")),
                      SizedBox(width: 16.0),
                      Text(
                        "gpay",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text(
                      "Select",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("images/phonepay.jpg")),
                      SizedBox(width: 16.0),
                      Text(
                        "Phonepay",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text(
                      "Select",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          child: Image.asset("images/Paytm.png")),
                      SizedBox(width: 16.0),
                      Text(
                        "Paytm",
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text(
                      "Select",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PaymentMethodTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onTap;

  PaymentMethodTile(
      {required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      onTap: () => onTap(),
    );
  }
}

class CreditCardPaymentPage extends StatefulWidget {
  @override
  _CreditCardPaymentPageState createState() => _CreditCardPaymentPageState();
}

class _CreditCardPaymentPageState extends State<CreditCardPaymentPage> {
  final _formKey = GlobalKey<FormState>();
  String _cardNumber = '';
  String _expiryDate = '';
  String _cvv = '';

  // Dummy payment process
  void _processPayment() {
    if (_formKey.currentState!.validate()) {
      // Simulate payment processing
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PaymentSuccessPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card Payment'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Card Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter card number';
                  }
                  return null;
                },
                onChanged: (value) {
                  _cardNumber = value;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Expiry Date (MM/YY)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter expiry date';
                  }
                  return null;
                },
                onChanged: (value) {
                  _expiryDate = value;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'CVV'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter CVV';
                  }
                  return null;
                },
                onChanged: (value) {
                  _cvv = value;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _processPayment,
                child: Text('Pay Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UpiPaymentPage extends StatefulWidget {
  final String paymentMethod;

  UpiPaymentPage({required this.paymentMethod});

  @override
  _UpiPaymentPageState createState() => _UpiPaymentPageState();
}

class _UpiPaymentPageState extends State<UpiPaymentPage> {
  final _upiController = TextEditingController();

  void _processUpiPayment() {
    if (_upiController.text.isNotEmpty) {
      // Simulate UPI payment processing
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PaymentSuccessPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.paymentMethod} Payment'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Enter your ${widget.paymentMethod} UPI ID',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _upiController,
              decoration: InputDecoration(
                labelText: 'UPI ID',
                hintText: 'example@upi',
                prefixIcon: Icon(Icons.account_balance_wallet),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _processUpiPayment,
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
