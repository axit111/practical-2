import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imgList = [
    Image.network(
        'https://images.unsplash.com/photo-1611930022073-b7a4ba5fcccd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
    Image.network(
        'https://images.unsplash.com/photo-1615900119312-2acd3a71f3aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
    Image.network(
        'https://images.unsplash.com/photo-1630688231126-dd36840fce51?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdCUyMHBob3RvZ3JhcGh5fGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
    Image.network(
        'https://cloudfront.omsphoto.com/wp-content/uploads/2020/11/OMS-Photo-product-photography-Sarah-Hone-014.jpg'),
    Image.network(
        'https://cdn.shopify.com/s/files/1/2303/2711/files/7_324422e0-fe83-4b3d-ae5c-641f4567b5ff.jpg?v=1617058709'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Practical 2",
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: Container(
                height: 550,
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 430,
                      margin: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://cdn.shopify.com/s/files/1/0410/9608/5665/products/VitaminC10_1200-1-min_1100x.png?v=1646543848"),
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    const ListTile(
                      title: Text("Face Wash",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontSize: 20
                      ),),
                      subtitle: Text("Cosmatic Product",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                      ),),
                      trailing: Text("110 Rs.",style: TextStyle(
                        fontWeight: FontWeight.bold,

                        fontSize: 25,
                      ),),
                    )
                  ],
                ),
              ),
              onTap: (){
                Navigator.of(context).pushNamed('detail_page');
              },
            );
          }),
    );
  }
}
