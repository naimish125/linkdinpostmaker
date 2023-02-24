import 'package:flutter/material.dart';
import 'package:linkdinpostmaker/ModelData.dart';

class photo2 extends StatefulWidget {
  const photo2({Key? key}) : super(key: key);

  @override
  State<photo2> createState() => _photo2State();
}

class _photo2State extends State<photo2> {
  @override
  Widget build(BuildContext context) {
    ModelDeta m1 = ModalRoute.of(context)?.settings.arguments as ModelDeta;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Linkdin Profile",
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            height: 50,
            width: 50,
            color: Colors.lightBlueAccent,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.lightBlueAccent,
              child: Center(
                child: Row(
                  children: [
                    Center(child: Text("${m1.name}")),
                    SizedBox(height: 100,),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    } ,
                        child: Text("back"))
                  ],
                ),
              ),
            )
          ),
        ),
      ),
    );
  }
}
