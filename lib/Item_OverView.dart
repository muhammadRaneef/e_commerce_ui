import 'package:flutter/material.dart';

import 'Item_Details.dart';

class Overview extends StatelessWidget {
  const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.arrow_back),
          title:
              Text("Decoration", style: TextStyle(fontWeight: FontWeight.w700)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                "Filter",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

          ],
          bottom: TabBar(tabs:
          [
            Text("Featured",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
            Text("Collectio",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
            Text("Trending",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),)

            // Tab(text: "Featured", ),
            // Tab(text: "Collection",),
            // Tab(text: "Trending",)
            // Text(
            //   "Featured",
            //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            // ),
            // Text(
            //   "Collection",
            //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500,color: Colors.grey),
            // ),
            // Text(
            //   "Trending",
            //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500,color: Colors.grey),
            // ),
          ]
          ),
        ),

        body: Column(
          children: [
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(13.0),
            //       child: Text(
            //         "Featured",
            //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(13.0),
            //       child: Text(
            //         "Collection",
            //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,color: Colors.grey),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(13.0),
            //       child: Text(
            //         "Trending",
            //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,color: Colors.grey),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 20,
            ),
            Expanded(child:
            GridView.builder(
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            ),
              itemBuilder: (context,index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(),));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.rectangle,
                              borderRadius: (BorderRadius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 75.0,left: 80),
                            child: Icon(Icons.favorite_outline_sharp,size: 20,weight: 5,),
                          ),
                        ),
                        Text(
                          "Georg Jensen",
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Minimal Clock",
                          style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        Text("15")
                      ],
                    ),
                  ),
                );
              }
            )
            )
          ],
        ),
      ),
    );
  }
}
