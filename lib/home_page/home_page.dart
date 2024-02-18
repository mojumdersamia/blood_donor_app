import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List bloodList = ['A+', "A-", "B+", "B-", "AB+", "AB-", "0+", "0-"];

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
//send request button style
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
        enabledMouseCursor: MouseCursor.defer,
        backgroundColor: Colors.red.shade700,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ));

    return Scaffold(
      //appbar with icon
      appBar: AppBar(
          title: const Text(
            'Hello! Nusrat.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined,
                  color: Colors.black87),
            ),
          ]),

      //customized bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: ('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: ('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: ('Menu'),
          ),
        ],
      ),

      //added floating action button of bottom nav
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade700,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(500)),
        foregroundColor: Colors.white,
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Are you looking for blood?",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 16),

                  //container of location search
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: const Icon(
                        Icons.location_on_outlined,
                        color: Colors.black87,
                      ),
                      hintText: "Location",
                    ),
                  ),
                  const SizedBox(height: 12),

                  //container of blood group search
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: const Icon(
                        Icons.water_drop_outlined,
                        color: Colors.black87,
                      ),
                      hintText: "Blood Group",
                    ),
                  ),
                  const SizedBox(height: 16),

                  //send request button
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: buttonStyle,
                      child: const Text(
                        'Send Request',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, height: 1),
                      ),
                    ),
                  ),

                  //
                  const SizedBox(height: 24),

                  // other options container
                  SizedBox(
                    height: 110,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //1st container of options
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/postcard.jpg",
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Post Blood Request',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 16),

                        //2nd container of options
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/blood bag.jpg",
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Blood Bank',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 16),

                        //3rd container of options
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/new-emergency.jpg",
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Emergency Donors',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  //blood group container
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Blood Needed',
                                style: TextStyle(fontSize: 15),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,
                                      color: Colors.red.shade700),
                                  const Text(
                                    'Uttara',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              )
                            ],
                          ),

                          const SizedBox(height: 16),

                          //
                          Row(
                            children: bloodList
                                .map((item) => Expanded(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.water_drop,
                                    color: Colors.red.shade700,
                                    size: 30,
                                  ),
                                  Text(item)
                                ],
                              ),
                            ))
                                .toList(),
                          ),
                        ],
                      )),

                  const SizedBox(height: 8),

                  //donation request container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Donation Request',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('See all',
                              style: TextStyle(fontSize: 12))),
                    ],
                  ),

                  // exp...
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //r1
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                            'assets/images/pexels-andrea-piacquadio-774909.jpg',
                          ),
                        ),

                        const SizedBox(width: 16),

                        //r2
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sabrina Binte Zahir',
                                style: TextStyle(fontSize: 15),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Labaid Hospital',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Text(
                                    'Science lab Dhaka 1205',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Text(
                                    'Time: 2.00 PM, 19 January, 2023',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        //r3
                        Column(children: [
                          Icon(
                            Icons.water_drop,
                            color: Colors.red.shade700,
                            size: 30,
                          ),
                          const Text('AB+'),
                        ]),
                      ],
                    ),
                  ),

                  //
                  const SizedBox(height: 16),

                  // accept decline button
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Decline',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 14),
                            ),
                          ),
                        ),

                        //
                        Container(
                          height: 16,
                          width: 2,
                          color: Colors.grey,
                        ),

                        //
                        Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Donate now',
                                style: TextStyle(
                                    color: Colors.red.shade700, fontSize: 14),
                              )),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}