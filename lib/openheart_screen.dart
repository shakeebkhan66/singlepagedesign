import 'package:flutter/material.dart';

class OpenUpScreen extends StatelessWidget {
  const OpenUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // TODO CHANGE THE WORLD
    final List<Map<String, dynamic>> paymentOptions = [
      {"name": "Paypal", "image": "assets/icons/paypal.png",},
      {"name": "Credit/Debit Card", "image": "assets/icons/creditcard.png",},
      {"name": "Transaction History", "image": "assets/icons/transacton.png",},
      {"name": "Watch Ads", "image": "assets/icons/watchads.png",},
    ];

    // TODO PROFILE
    final List<Map<String, dynamic>> profile = [
      {"name": "John Doe", "image": "assets/icons/user.png",},
      {"name": "Edit Avatar", "image": "assets/icons/avatar.png",},
    ];
    


    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [

            // Change The World
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 50.0, left: 15.0),
              child: const Text(
                "Change The World.",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.2, 0.2),
                      blurRadius: 7.0,
                      spreadRadius: 0.2,
                    )
                  ]),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: paymentOptions.length,
                      separatorBuilder: (BuildContext context, int index){
                        return const Divider(thickness: 1.0);
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
                          child: Row(
                            children: [
                              Image.asset(
                                paymentOptions[index]["image"]!,
                                height: 40,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                paymentOptions[index]["name"]!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16.0),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Profile
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: const Text(
                "Profile",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(height: 15.0,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.2, 0.2),
                      blurRadius: 7.0,
                      spreadRadius: 0.2,
                    )
                  ]),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemCount: profile.length,
                      separatorBuilder: (BuildContext context, int index){
                        return const Divider(thickness: 1.0);
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
                          child: Row(
                            children: [
                              Image.asset(
                                profile[index]["image"]!,
                                height: 30,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                profile[index]["name"]!,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16.0),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Open Up
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: const Text(
                "Open Up",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(height: 15.0,),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.2, 0.2),
                      blurRadius: 7.0,
                      spreadRadius: 0.2,
                    )
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/topic.png",
                          height: 25,
                        ),
                        const SizedBox(width: 8.0),
                        const Text("Topics",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Stories
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: const Text(
                "Stories",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(height: 15.0,),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.2, 0.2),
                      blurRadius: 7.0,
                      spreadRadius: 0.2,
                    )
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/stories.png",
                          height: 30,
                        ),
                        const SizedBox(width: 8.0),
                        const Text("My Stories",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/activities.png",
                          height: 30,
                        ),
                        const SizedBox(width: 8.0),
                        const Text("My Activities",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Support
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 15.0, left: 15.0),
              child: const Text(
                "Support",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(height: 15.0,),
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.2, 0.2),
                      blurRadius: 7.0,
                      spreadRadius: 0.2,
                    )
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/privacypolicy.png",
                          height: 30,
                        ),
                        const SizedBox(width: 8.0),
                        const Text("Privacy Policy",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/terms.png",
                          height: 30,
                        ),
                        const SizedBox(width: 8.0),
                        const Text("Terms Of Use",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
