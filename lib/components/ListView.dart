// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  Container commonListView(String path, String title, String shortDesc) {
    return Container(
      child: Text(title),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(3, 5))
          ]),
    );
  }

  var arrNames = ['Bilal', 'Abdullah', 'Anas', 'Arham'];
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   reverse: true,
    //   children: [
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //     commonListView('htt', 'Bilal', 'He lives in lahore'),
    //   ],
    // );

    return ListView.builder(
      itemBuilder: (context, index) {
        return commonListView('htt', arrNames[index], 'He lives in lahore');
      },
      itemCount: arrNames.length,
    );
  }
}
