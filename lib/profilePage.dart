import 'package:flutter/material.dart';

class ProPage extends StatelessWidget {
  ProPage({super.key});
  final String num = "200";
  final String num1 = "200";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CustomAppBarClipper(),
            child: Container(
              height: 200.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/wallpaper.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30.0,
                    left: 16.0,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    top: 30.0,
                    right: 16.0,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Follow"),
                    ),
                  ),
                  const Positioned(
                    top: 40.0,
                    left: 0,
                    right: 5,
                    child: Center(
                      child: Text(
                        '@ramyhany',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage('assets/images/DSC_0926 (1).jpg'),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Ramy Hany",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Hurghada, RedSea",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(right: 12, left: 12),
            color: Colors.grey.shade200,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text.rich(
                  TextSpan(
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      text: "200",
                      children: [TextSpan(text: " Follower")]),
                  textAlign: TextAlign.right,
                ),
                Text.rich(
                  TextSpan(
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      text: "150",
                      children: [TextSpan(text: " Following")]),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            /*  width: 30,
            height: 30, */
            margin: const EdgeInsets.only(right: 75, left: 75),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageIcon(
                  AssetImage("assets/images/web.png"),
                  color: Colors.grey,
                  size: 25,
                ),
                ImageIcon(
                  AssetImage("assets/images/instagram-logo.png"),
                  color: Colors.grey,
                  size: 25,
                ),
                ImageIcon(
                  AssetImage("assets/images/facebook.png"),
                  color: Colors.grey,
                  size: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/* class ProPage extends StatelessWidget {
  const ProPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Column(mainAxisSize: MainAxisSize.min, children: [
            ElevatedButton(onPressed: () {}, child: const Text("Follow"))
          ])
        ],
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: const Text(
          '@Ramy Hany',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: const Image(
          image: AssetImage('assets/images/wallpaper.jpg'),
          fit: BoxFit.fill,
        ),
      ),

    );
  }
}
 */
