import 'package:flutter/material.dart';
import 'package:linkdinpostmaker/ModelData.dart';

class post extends StatefulWidget {
  const post({Key? key}) : super(key: key);

  @override
  State<post> createState() => _Page1State();
}

class _Page1State extends State<post> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtCompnyname = TextEditingController();
  TextEditingController txtuiid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Linkdin Profile",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Gallery")),
                SizedBox(height: 10,),
                TextField(
                  controller: txtname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Name"),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txtCompnyname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("Company name"),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: txtuiid,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text("User id"),
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                  ModelDeta m1 = ModelDeta(name: txtname.text,companyname: txtCompnyname.text,grid: txtuiid.text);
                  Navigator.pushNamed(context, 'ph',arguments: m1);
                },
                    child: Text("Genret")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}