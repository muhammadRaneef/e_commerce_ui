import 'package:flutter/material.dart';

import 'Item_OverView.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Categories"),
        centerTitle: true,
      ),
      body: ListView.separated(

        itemBuilder: (context,index) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Overview(),));
            },
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(color: Colors.grey,
                        shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(" ")
                      )
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Items",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700)),
                      Text("items count")
                    ],
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Icon(Icons.arrow_circle_left_rounded),

                ],

              ),
            ),
          );

        }, separatorBuilder: (BuildContext context, int index) {
          return Divider(

          );
      }, itemCount: 10,
      ),
    );
  }
}
