import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedItem = 'All products';

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
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Nunya's Coffee",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildItem('All products', 59),
                  _buildItem('Cappacinno', 19),
                  _buildItem('Expresso', 20)
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Container(
              height: MediaQuery.of(context).size.height - 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCoffeeItem('images/coffee.jpg', 'Latte with tumeric',
                      'Iced Coffee', '2.99'),
                  _buildCoffeeItem('images/coffee2.jpg', 'Latte with tumeric',
                      'Iced Coffee', '2.99'),
                  _buildCoffeeItem('images/coffee3.jpg', 'Latte with tumeric',
                      'Iced Coffee', '2.99')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildCoffeeItem(
      String imgPath, String productName, String productType, String price) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 225.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4.0,
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 225.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    productName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    productType,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '\$' + price,
                        style: TextStyle(
                            fontSize: 19.0, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildItem(String productName, int count) {
    return Padding(
      padding: EdgeInsets.only(top: 10, right: 15, bottom: 10, left: 4),
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 500,
        ),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: switchHighlight(productName),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              spreadRadius: 2.0,
              color: switchShadow(productName),
            )
          ],
        ),
        height: 50.0,
        width: 125.0,
        child: InkWell(
          onTap: () {
            selectedProduct(productName);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: switchHighlightColor(productName)),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  productName,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: switchHighlightColor(productName)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectedProduct(prodName) {
    setState(() {
      selectedItem = prodName;
    });
  }

  switchHighlight(prodName) {
    if (prodName == selectedItem) {
      return Color(0xFF5D6D7E);
    } else {
      return Colors.grey.withOpacity(0.3);
    }
  }

  switchHighlightColor(prodName) {
    if (prodName == selectedItem) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  switchShadow(prodName) {
    if (prodName == selectedItem) {
      return Color(0xFF5D6D7E).withOpacity(0.4);
    } else {
      return Colors.transparent;
    }
  }
}
