import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'data.dart';
import 'detail_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.teal,
        statusBarIconBrightness: Brightness.light,
      ),
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              // Header
              Container(
                height: (MediaQuery.of(context).orientation ==
                        Orientation.landscape)
                    ? Get.size.height * .21
                    : Get.size.height * .25,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'RamadhanKu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Buku Saku Ramadhan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: Get.size.height * .05),

              // List Menu
              Container(
                height: Get.size.height * .65,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Colors.white,
                    ),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ListView.separated(
                  itemCount: data.length,
                  separatorBuilder: (_, __) => Divider(),
                  itemBuilder: (context, index) {
                    var item = data[index];

                    return ListTile(
                      title: Text(item['title']),
                      trailing: Icon(Icons.arrow_forward_ios, size: 15),
                      onTap: () => Get.to(
                        () => DetailPage(
                          title: item['title'],
                          doa: item['doa'],
                          latin: item['latin'],
                          terjemahan: item['terjemahan'],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
