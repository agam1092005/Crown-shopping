import 'package:crown_shopping/Checkout/person_details_page.dart';
import 'package:crown_shopping/Others/Constants.dart';
import 'package:crown_shopping/Others/bgcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OrderInformationPage extends StatefulWidget {
  @override
  _OrderInformationPageState createState() => _OrderInformationPageState();
}

class _OrderInformationPageState extends State<OrderInformationPage> {
  String productname = '';
  double productprice;
  String productimage = '';

  getProductData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      productname = prefs.getString('productname');
      productimage = prefs.getString('productimage');
      productprice = prefs.getDouble('productprice');
    });
  }

  String selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = "Medium";
  }

  setSelectedRadio(String val) {
    setState(() {
      selectedRadio = val;
    });
  }

  int _counter = 1;

  void _decrementCounter() {
    setState(() {
      if (_counter == 1) {
        _counter = 1;
      } else {
        _counter--;
      }
    });
  }

  void _incrementCounter() {
    setState(() {
      if (_counter == 5) {
        _counter = 5;
      } else {
        _counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      getProductData();
    });
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFff4d4d),
          splashColor: Colors.black,
          elevation: 6,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 25,
          ),
          onPressed: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            prefs.setInt('productquantity', _counter);
            prefs.setString('productsize', selectedRadio);
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                transitionsBuilder: (context, animation, animationTime, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                pageBuilder: (context, animation, animationTime) {
                  return PersonsDetails();
                },
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          children: [
            Text(
              'Review Your Order',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.fact_check_outlined,
                  color: Bgcolor.deepred,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.home_work_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.payment,
                  color: Colors.black54,
                  size: 30,
                ),
                Container(
                  width: 60,
                  height: 8,
                  color: Colors.black,
                ),
                Icon(
                  Icons.done_outline_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.maxFinite,
              child: ListTile(
                leading: Icon(
                  Icons.info_outline_rounded,
                  size: 25,
                  color: Colors.yellow,
                ),
                title: Text(
                  "Note that by Default Quantity and the Size of the Product is Set to 1 & M (Medium) respectively.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inconsolata'),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Ordering Item',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      image: AssetImage(
                        'images/$productimage',
                      ),
                    ),
                    color: Colors.black38,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        12,
                      ),
                    ),
                  ),
                ),
                title: Text('$productname'),
                subtitle: Text('Quantity x$_counter'),
                trailing: Text('$productprice'),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.black26,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose Quantity:',
                  style: DrawerTextStyle,
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove,
                    size: 25,
                  ),
                  onPressed: _decrementCounter,
                  splashRadius: 15,
                ),
                Text(
                  '$_counter',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Inconsolata'),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 25,
                  ),
                  onPressed: _incrementCounter,
                  splashRadius: 15,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Choose Size:',
              style: DrawerTextStyle,
            ),
            RadioListTile(
              activeColor: Bgcolor.deepred,
              title: Text(
                'S',
                style: DrawerTextStyle,
              ),
              value: "Small",
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              },
            ),
            RadioListTile(
              activeColor: Bgcolor.deepred,
              title: Text(
                'M',
                style: DrawerTextStyle,
              ),
              value: "Medium",
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              },
            ),
            RadioListTile(
              activeColor: Bgcolor.deepred,
              title: Text(
                'L',
                style: DrawerTextStyle,
              ),
              value: "Large",
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              },
            ),
            RadioListTile(
              activeColor: Bgcolor.deepred,
              title: Text(
                'XL',
                style: DrawerTextStyle,
              ),
              value: "Extra Large",
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              },
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.white,
                    elevation: 1,
                    content: Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: DefaultTabController(
                        length: 2,
                        child: Scaffold(
                          appBar: AppBar(
                            elevation: 0,
                            automaticallyImplyLeading: false,
                            title: Center(
                              child: Text(
                                'Clothes Size Charts',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            backgroundColor: Colors.white,
                            bottom: TabBar(
                              isScrollable: false,
                              indicatorWeight: 4,
                              indicatorColor: Bgcolor.deepred,
                              tabs: [
                                Tab(
                                  child: Text(
                                    'Men',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    'Women',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          body: TabBarView(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('images/MenSizeChart.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('images/WomenSizeChart.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'OK',
                          style: TextStyle(color: Bgcolor.deepred),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.bar_chart,
                    size: 25,
                  ),
                  Text(' Clothes Size Chart'),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(
                      'Shoes Size Chart',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 1,
                    content: Container(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'S',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'UK 6 / EU 39.5',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'M',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'UK 7 / EU 40.5',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'L',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'UK 8 / EU 42',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'XL',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'UK 9  / EU 43',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'OK',
                          style: TextStyle(color: Bgcolor.deepred),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.bar_chart,
                    size: 25,
                  ),
                  Text(' Shoes Size Chart'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              child: Text(
                'Shipping Fee: FREE',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.bottomRight,
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              child: Text(
              "\$ ${productprice * _counter}",
                style: DrawerTextStyle,
              ),
              alignment: Alignment.bottomRight,
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
