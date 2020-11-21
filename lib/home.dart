import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.red,
      //   title: Text('YAMAHA'),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 12.0),
      //       child: Transform.rotate(
      //         angle: -0.5,
      //         child: Icon(
      //           Icons.notifications,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 300,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      left: 0.0,
                      child: Container(
                        height: mq.height * .52,
                        decoration: BoxDecoration(
                          color: Colors.red[200],
                        ),
                      ),
                    ),
                    Container(
                      child: Positioned(
                        top: mq.height * .12,
                        left: 0.0,
                        right: 0.0,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'All Accessories',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    color: Colors.white,
                                    textColor: Colors.redAccent[100],
                                    child: Text('View All'),
                                    elevation: 0.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 190.0,
                              width: mq.width - 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    height: 60.0,
                                    width: mq.width * .95,
                                    child: InkWell(
                                      onTap: () => showSearch(
                                          context: context, delegate: null),
                                      child: Card(
                                        elevation: 5.0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        color: Colors.white,
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 14.0),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "What are you looking for?",
                                                  style: TextStyle(
                                                    fontFamily: 'google',
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 12.0),
                                                child: Icon(
                                                  Icons.search,
                                                  color: Colors.red,
                                                  size: 30.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: MaterialButton(
                                      onPressed: () => {},
                                      minWidth: mq.width * .95,
                                      color: Colors.red[400],
                                      textColor: Colors.white,
                                      height: 40.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          5.0,
                                        ),
                                      ),
                                      child: ListTile(
                                        onTap: () => {},
                                        leading: Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        ),
                                        title: Text(
                                          'Book for a Service',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: AppBar(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        title: Text('YAMAHA'),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Transform.rotate(
                              angle: -0.5,
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200.0,
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, i) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 100.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Colors.transparent,
                                width: 10.0,
                              ),
                            ),
                            child: Icon(
                              Icons.ac_unit,
                              color: Colors.white,
                              size: 50.0,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'Combos',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                child: Container(
                  height: 210,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1508141610389-6253d977b87e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1033&q=80'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // child: Image.network(
                  //   'https://images.unsplash.com/photo-1605705185718-5f667b08c4be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.category,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Brand New Bikes',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      child: Text('View All'),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Column(
                  children: List.generate(
                    4,
                    (i) => Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: mq.width * .9,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 20.0,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20.0,
                                  ),
                                  color: Colors.pink,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Yamaha R15',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '1,50,000',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  MaterialButton(
                                    color: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        5.0,
                                      ),
                                    ),
                                    textColor: Colors.white,
                                    child: Text('View Details'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.favorite_outline,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.category,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Service Kits',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      child: Text('View All'),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Column(
                  children: List.generate(
                    4,
                    (i) => Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        width: mq.width * .9,
                        height: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 20.0,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    20.0,
                                  ),
                                  color: Colors.pink,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Yamaha R15',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '1,50,000',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  MaterialButton(
                                    color: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        5.0,
                                      ),
                                    ),
                                    textColor: Colors.white,
                                    child: Text('View Details'),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.favorite_outline,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
