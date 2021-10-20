import 'package:binaryoze/category_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'HEY,',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'FIND A STRATEGY YOU WANT TO LEARN,',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F5F9),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search for anything',
                        style: TextStyle(fontSize: 18, color: Colors.black26),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Category',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  Text('See All',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: GridView.builder(
                      itemCount: categoryList.length,
                      physics: BouncingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, childAspectRatio: 3.5),
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.white,
                          margin: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(40))),
                          elevation: 6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 2.0,
                                        spreadRadius: 1),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Text(
                                  categoryList[index].id.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                categoryList[index].name,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
