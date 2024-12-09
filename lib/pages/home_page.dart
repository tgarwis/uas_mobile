import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/src/asset_manifest.dart' as google_fonts_asset_manifest;


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [

            //Dashboard Total Income and Expense

            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Container(
                        child: Icon(Icons.download, color: Colors.green,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      ),
                      
                      SizedBox(width: 15,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Income", style: TextStyle(color: Colors.white, fontSize: 15)),
                          SizedBox(height: 10,),
                          Text('Rp. 5.000.000', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ],
                      ),

                    ],),

                    Row(children: [
                      Container(
                        child: Icon(Icons.upload, color: Colors.red,),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      ),
                      
                      SizedBox(width: 15,),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expense", style: TextStyle(color: Colors.white, fontSize: 15)),
                          SizedBox(height: 10,),
                          Text('Rp. 5.000.000', style: TextStyle(color: Colors.white, fontSize: 12)),
                        ],
                      ),

                    ],)
                  ],
                ),

                width: double.infinity,
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),

            SizedBox(height: 30,),

            Text("Transactions", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),
        
            //List of transactions

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 10,
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete),
                      SizedBox(width: 10,),
                      Icon(Icons.edit),
                    ],
                  ),
                  title: Text("Rp. 10.000"),
                  subtitle: Text("Makan"),
                  leading: Container(
                    child: Icon(Icons.upload, color: Colors.red,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 10,
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete),
                      SizedBox(width: 10,),
                      Icon(Icons.edit),
                    ],
                  ),
                  title: Text("Rp. 7.000.000"),
                  subtitle: Text("Gaji"),
                  leading: Container(
                    child: Icon(Icons.download, color: Colors.green,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            )
      ],
    )),);
  }
}