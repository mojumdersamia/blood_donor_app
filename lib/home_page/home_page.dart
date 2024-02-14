import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //main container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Are you looking for blood?",
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                const SizedBox(height: 3),

                //container of location search
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.location_on_outlined,
                          color: Colors.black87,
                        ),
                        hintText: "Location",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                //container of blood group search
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.water_drop_outlined,
                          color: Colors.black87,
                        ),
                        hintText: "Blood Group",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),

                //send request button
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: buttonStyle,
                        child: const Text(
                          'Send Request',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ))),
                const SizedBox(
                  height: 10,
                ),

                // other options container
                SizedBox(
                  height: 105,
                  width: 700,
                  child: Row(children: [
                    //1st container of options
                    Container(
                      height: 105,
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/postcard.jpg",
                            height: 40,
                            width: 30,
                            fit: BoxFit.fitWidth,
                          ),
                          const Text(
                            'Post Blood Request',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),

                    //2nd container of options
                    Container(
                      height: 105,
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/blood bag.jpg",
                            height: 40,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Blood Bank',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),

                    //3rd container of options
                    Container(
                      height: 105,
                      width: 100,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/new-emergency.jpg",
                            height: 40,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Emergency Donors',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 7,
                ),

                //blood group container
                Container(
                    height: 90,
                    width: 700,
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Blood Needed',
                              style: TextStyle(fontSize: 15),
                            ),
                            const Spacer(),
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

                        //blood drop row
                        Row(
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.red.shade700,
                                  size: 30,
                                ),
                                const Text('A+')
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.red.shade700,
                                  size: 30,
                                ),
                                const Text('AB+')
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.red.shade700,
                                  size: 30,
                                ),
                                const Text('A-')
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.red.shade700,
                                  size: 30,
                                ),
                                const Text('O+')
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.red.shade700,
                                  size: 30,
                                ),
                                const Text('B+')
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.red.shade700,
                                  size: 30,
                                ),
                                const Text('A+')
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),

                //donation request container
                Container(
                  height: 30,
                  padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: Row(
                    children: [
                      const Text(
                        'Donation Request',
                        style: TextStyle(fontSize: 15),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text('See all',
                              style: TextStyle(fontSize: 12))),
                    ],
                  ),
                ),

                // name address container
                Container(
                  height: 75,
                  width: 700,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/pexels-andrea-piacquadio-774909.jpg',
                    ),),
                    title: const Text(
                      'Sabrina Binte Zahir',
                      style: TextStyle(fontSize: 15),
                    ),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Labaid Hospital',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          'Science lab Dhaka 1205',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                        Text(
                          'Time: 2.00 PM, 19 January, 2023',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                    trailing: Column(children: [
                      Icon(
                        Icons.water_drop,
                        color: Colors.red.shade700,
                        size: 30,
                      ),
                      const Text('AB+'),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),


                // accept decline button
                Container(
                  height: 43,
                  width: 700,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Decline',
                          style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
                        ),
                      ),
                      const Spacer(),
                      Container(height: 16, width: 2, color: Colors.grey,),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Donate now',
                            style: TextStyle(color: Colors.red.shade700,fontSize: 14),
                          )),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
