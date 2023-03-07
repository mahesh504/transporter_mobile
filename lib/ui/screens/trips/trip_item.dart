import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../constants/app_strings.dart';
import '../../../helpers/fire_store_helper.dart';

class TripListItem extends StatelessWidget {
  DatabaseService db = DatabaseService();
  Map<String, dynamic> data = {};
  TripListItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    String start_date = data['start_date'];
    try {
      // start_date = '2021-01-26T03:17:00.000000Z';
      DateTime parseDate =
          new DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'").parse(start_date);
      var inputDate = DateTime.parse(parseDate.toString());
      var outputFormat = DateFormat('dd-MM-yyyy');
      var outputDate = outputFormat.format(inputDate);
      // start_date = DateFormat("yyyy-MM-dd")
      //     .parse("2002-02-27T14:00:00-0500"
      //         // data['start_date']
      //         )
      //     .toString();

      start_date = outputDate;
    } catch (e) {}
    return Card(
        child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        size: 8,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        data['from_location'].toString().split(", ")[0],
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 3),
                      height: 10,
                      width: 1,
                      color: Colors.grey),
                  Row(
                    children: [
                      const Icon(
                        Icons.circle_outlined,
                        size: 8,
                        color: Colors.red,
                      ),
                      SizedBox(width: 5),
                      Text(
                        data['to_location'].toString().split(", ")[0],
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  const Text("Start Date : ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text(start_date, style: const TextStyle(fontSize: 12))
                ],
              ),
              Row(
                children: [
                  const Text("Price : ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text(data['price'], style: const TextStyle(fontSize: 12))
                ],
              ),
              FutureBuilder(
                  future: db.getSingleRecord(
                      DatabaseService.tbl_user_vechils, data['vechil_id']),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: const CircularProgressIndicator());
                    } else if (snapshot.data!.docs.isEmpty) {
                      return const Text(str_no_data_found);
                    } else {
                      return Column(
                        children: [
                          Row(
                            children: [
                              const Text("Vechil Number : ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text(snapshot.data!.docs.first["vechil_number"],
                                  style: const TextStyle(fontSize: 12))
                            ],
                          ),
                          Row(
                            children: [
                              const Text("Capacity : ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Text(snapshot.data!.docs.first['capacity'],
                                  style: const TextStyle(fontSize: 12))
                            ],
                          ),
                        ],
                      );
                    }
                  }),
            ])));
  }
}
