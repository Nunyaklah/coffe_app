import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, right: 15),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent,
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Color(0xFF5D6D7E),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25.0,
                      right: 30.0,
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.red),
                        child: Center(
                          child: Text(
                            '8',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
            child: Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildListItems('images/coffee.jpg'),
                  _buildListItems('images/coffee2.jpg'),
                  _buildListItems('images/coffee3.jpg'),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 15.0, bottom: 15.0, left: 25.0, right: 15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildDetails(
                      'Iced Coffee',
                      'Latte with Tumeric',
                      'This hot coffee is made of medicinal '
                          ' tasty ingredrients. Just click and have it delivered in a second'
                          'Tastes great, Tastes good',
                      '4',
                      '5.99')
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 30),
            child: Container(
              height: 60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  'Add to cart',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Color(0xFF5D6D7E),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildDetails(String productType, String productName,
      String productDescription, String productQuantity, String productCost) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          productType,
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          productName,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          productDescription,
          style: TextStyle(fontSize: 15, color: Colors.grey, height: 1.5),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Quantity',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                productQuantity,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Cost',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$' + productCost,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        )
      ],
    );
  }

  _buildListItems(String imgPath) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.0,
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
