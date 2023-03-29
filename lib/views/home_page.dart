import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import '../custom_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
            inactiveColor: Colors.grey,
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.sports_basketball_outlined),
            title: Text('Users'),
            inactiveColor: Colors.grey,
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_outline),
            title: Text(
              'Messages test for mes teset test test ',
            ),
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person_outline_outlined,),
            title: Text('Settings'),
            inactiveColor: Colors.grey,
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget> [
           SliverAppBar (
             backgroundColor: Colors.white,
            pinned: true,
            floating: true,
            expandedHeight: 80.0,
            shadowColor: Colors.white,
            elevation: 4,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[100]
                ),
                child: Icon(Icons.menu,color: Colors.black,),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 20),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[100]
                  ),
                  child: Icon(Icons.search,color: Colors.black,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[100]
                  ),
                  child: Icon(Icons.notifications_active,color: Colors.black,),
                ),
              ),
            ],

          ),
          SliverList(delegate: SliverChildListDelegate(
              [
                Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Breaking News", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  const Text("View all", style: TextStyle(color: Color(0xFF0988E1), fontSize: 16),)
                ],
              ),
            ),
                CarouselWithDotsPage(),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Recommendation", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      const Text("View all", style: TextStyle(color: Color(0xFF0988E1), fontSize: 16),)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.4,
                          height: MediaQuery.of(context).size.height*.18,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/thumb-sport-36.jpg", fit: BoxFit.cover),
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sport", style: TextStyle(color: Colors.grey, fontSize: 13),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*.4,
                                  child: Text("What TrainingDo Vollyball Players Need?", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)),
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person, color: Colors.grey,size: 30,),
                                    radius: 25,
                                    backgroundColor: Colors.grey[200],
                                  ),
                                  Text("  Mervet . 29 Mar. 2023", style: TextStyle(fontSize: 10, color: Colors.grey),)
                                ],
                              )
                            ],
                        ),
                         )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.4,
                          height: MediaQuery.of(context).size.height*.18,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/ouvrir-une-franchise-de-salle-de-sport-fitness (1).jpg", fit: BoxFit.cover),
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sport", style: TextStyle(color: Colors.grey, fontSize: 13),),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*.4,
                                  child: Text("What TrainingDo Vollyball Players Need?", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)),
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person, color: Colors.grey,size: 30,),
                                    radius: 25,
                                    backgroundColor: Colors.grey[200],
                                  ),
                                  Text("  Mervet . 29 Mar. 2023", style: TextStyle(fontSize: 10, color: Colors.grey),)
                                ],
                              )
                            ],
                        ),
                         )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.4,
                          height: MediaQuery.of(context).size.height*.18,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/Sports-and-Athletes-Website-Header.png", fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sport", style: TextStyle(color: Colors.grey, fontSize: 13),),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width*.4,
                                  child: Text("What TrainingDo Vollyball Players Need?", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)),
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person, color: Colors.grey,size: 30,),
                                    radius: 25,
                                    backgroundColor: Colors.grey[200],
                                  ),
                                  Text("  Mervet . 29 Mar. 2023", style: TextStyle(fontSize: 10, color: Colors.grey),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.4,
                          height: MediaQuery.of(context).size.height*.18,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/sports_banners.png", fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sport", style: TextStyle(color: Colors.grey, fontSize: 13),),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width*.4,
                                  child: Text("What TrainingDo Vollyball Players Need?", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)),
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person, color: Colors.grey,size: 30,),
                                    radius: 25,
                                    backgroundColor: Colors.grey[200],
                                  ),
                                  Text("  Mervet . 29 Mar. 2023", style: TextStyle(fontSize: 10, color: Colors.grey),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*.4,
                          height: MediaQuery.of(context).size.height*.18,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset("assets/vector-athletes-carrying-different-sport-icons.png", fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sport", style: TextStyle(color: Colors.grey, fontSize: 13),),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width*.4,
                                  child: Text("What TrainingDo Vollyball Players Need?", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)),
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Icon(Icons.person, color: Colors.grey,size: 30,),
                                    radius: 25,
                                    backgroundColor: Colors.grey[200],
                                  ),
                                  Text("  Mervet . 29 Mar. 2023", style: TextStyle(fontSize: 10, color: Colors.grey),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
          ]

          )
          ),

        ],
      ),
    );
  }
}
