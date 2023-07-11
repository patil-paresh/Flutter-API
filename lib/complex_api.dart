import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_api_call/models/user_model.dart';
import 'package:http/http.dart' as http;

class ComplexApi extends StatelessWidget {
  ComplexApi({super.key});

  List<UserModel> userList = [];

  Future<List<UserModel>> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map i in data) {
        userList.add(UserModel.fromJson(i));
      }
      return userList;
    } else {
      return userList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
            child: FutureBuilder(
                future: getUserApi(),
                builder: (context, snapshot) {
                  if (ConnectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else {
                    return ListView.builder(
                        itemCount: userList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(children: [
                              ReusableRow(
                                  title: "Name",
                                  value: snapshot.data![index].name.toString()),
                              ReusableRow(
                                  title: "UserName",
                                  value: snapshot.data![index].username
                                      .toString()),
                              ReusableRow(
                                  title: "Email",
                                  value:
                                      snapshot.data![index].email.toString()),
                              ReusableRow(
                                  title: "Address of city",
                                  value: snapshot.data![index].address!.city
                                      .toString()),
                              ReusableRow(
                                  title: "Latitude",
                                  value: snapshot.data![index].address!.geo!.lat
                                      .toString()),
                              ReusableRow(
                                  title: "Catch Phrase",
                                  value: snapshot
                                      .data![index].company!.catchPhrase
                                      .toString())
                            ]),
                          );
                        });
                  }
                }))
      ]),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
