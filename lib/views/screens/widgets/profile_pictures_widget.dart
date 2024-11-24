import 'package:flutter/material.dart';

class ProfilePicturesWidget extends StatefulWidget {
  const ProfilePicturesWidget({super.key});

  @override
  State<ProfilePicturesWidget> createState() => _ProfilePicturesWidgetState();
}

class _ProfilePicturesWidgetState extends State<ProfilePicturesWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profile3.png"),
                          radius: 30,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: InkWell(
                            onTap: () {},
                            child: const CircleAvatar(
                              radius: 12,
                              backgroundColor: Color.fromARGB(255, 81, 23, 121),
                              child: Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("You"),
                  ],
                ),
              ],
            )),
        const SizedBox(
          width: 15,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 81, 23, 121),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: const Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile1.png"),
                      radius: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Text("John")
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 81, 23, 121),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: const Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                      radius: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Text("John")
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 81, 23, 121),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: const Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile2.png"),
                      radius: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Text("John")
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 81, 23, 121),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(50)),
                child: const Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile4.png"),
                      radius: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Text("John")
          ],
        ),
      ],
    );
  }
}
