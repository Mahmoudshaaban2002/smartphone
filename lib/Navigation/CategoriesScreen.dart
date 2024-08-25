import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget{

  // List of category
  final List<String> Categorieslist = [
    "beauty",
    "fragrances",
    "furniture",
    "groceries",
    "home-decoration",
    "kitchen-accessories",
    "laptops",
    "mens-shirts",
    "mens-shoes",
    "mens-watches",
    "mobile-accessories",
    "motorcycle",
    "skin-care",
    "smartphones",
    "sports-accessories",
    "sunglasses",
    "tablets",
    "tops",
    "vehicle",
    "women's-bags",
    "women's-dresses",
    "women's-jewellery",
    "women's-shoes",
    "women's-watches"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
          titleTextStyle: TextStyle(color: Colors.grey.shade200,fontSize: 25),
          backgroundColor: Colors.orange,
        ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey.shade200,
            child: Padding(
                padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [BoxShadow(
                        color: Color.fromRGBO(225, 95 , 27 , .3),
                        blurRadius: 20,
                        offset: Offset(0, 10)

                    )]
                ),
                child: ListView.builder(
                  itemCount: Categorieslist.length,
                  itemBuilder: (context,index){
                    return  InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/smartphones');
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.orange, width: 1.0)
                                  )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  Text(
                                    Categorieslist[index],
                                    style:  TextStyle(fontSize: 18,color: Colors.grey[600]),
                                  )
                                ],
                              ),
                            )

                        )

                    );
                  },


                ) ,
              )
            )
          ),

      );
  }

}