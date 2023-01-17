import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<dynamic> _items = [];

  // Future<void> readJson() async {
  //   final String response  = await rootBundle.loadString('assets/genre.json');
  //   final data = await json.decode(response) ;
  //   setState(() {
  //     _items = data["genres"];
  //     print('No of Items : ${_items.length}');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // backgroundColor: Colors.blueGrey[900],
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        // leading: ,
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.white60, fontSize: 20),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add, size: 35))
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Let's create your",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Account',
                    style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'First Name',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Last Name',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Mobile No',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntlPhoneField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Email ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     const Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Text('Genres', style: TextStyle(color: Colors.white),),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: DropdownButton(

            //         value: dropdownValue,
            //         icon: const Icon(Icons.arrow_downward),
            //         elevation: 16,
            //         items: const [
            //           DropdownMenuItem(child: Text('Pop'), value: "pop",),
            //           DropdownMenuItem(child: Text('Jazz'), value: "Jazz",),
            //           DropdownMenuItem(child: Text('Classical'), value: "Classical",),
            //           DropdownMenuItem(child: Text('Rock'), value: "Rock",),
            //           DropdownMenuItem(child: Text('Retro'), value: "Retro",),
            //         ],
            //         onChanged: (dropdownValue) {},
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
