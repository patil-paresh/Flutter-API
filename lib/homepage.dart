import 'package:flutter/material.dart';
import 'package:get_api_call/complex_api.dart';
import 'package:get_api_call/photos_api.dart';
import 'package:get_api_call/text_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "API",
          style: TextStyle(fontSize: 30),
        ),
        leading: Text(
          "Paresh.Patil",
          style: TextStyle(fontSize: 10),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  height: 80,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TextApi()))
                    },
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Text API",
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shadowColor: Colors.blue,
                      textStyle: const TextStyle(fontSize: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 80,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PhotosApi()))
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("Photos API"),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shadowColor: Colors.blue,
                      textStyle: const TextStyle(fontSize: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 80,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComplexApi()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text("Complex API"),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueAccent,
                      shadowColor: Colors.blue,
                      textStyle: const TextStyle(fontSize: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
