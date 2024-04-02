import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Urban(),
    );
  }
}

class Urban extends StatefulWidget {
  const Urban({super.key});

  @override
  State<Urban> createState() => _UrbanState();
}

class _UrbanState extends State<Urban> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "'Search for Anything....'",
          style: TextStyle(color: Colors.grey),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        shadowColor: Colors.grey,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 100,
                        child: Image.network(
                            "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_category/w_56,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/supply/customer-app-supply/1678864013225-bfc1de.jpeg"),
                      ),
                      const SizedBox(
                          height: 50,
                          width: 100,
                          child: Text(
                            "Women's salon ,spa",
                            textAlign: TextAlign.center,
                          )),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 100,
                        child: Image.network(
                            "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_category/w_56,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1707485360039-fd903d.jpeg"),
                      ),
                      const SizedBox(
                          height: 50,
                          width: 100,
                          child: Text("Men's salon & Massage",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 100,
                        child: Image.network(
                            "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_category/w_56,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/home-screen/1679292077307-6143d7.jpeg"),
                      ),
                      const SizedBox(
                          height: 50,
                          width: 100,
                          child: Text("AC & Appliance Repair",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 100,
                        child: Image.network(
                            "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_category/w_56,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/home-screen/1681711961404-75dfec.jpeg"),
                      ),
                      const SizedBox(
                          height: 50,
                          width: 100,
                          child: Text("Cleaning & Pest Control",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 100,
                        child: Image.network(
                            "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_category/w_56,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1658402794135-faf080.png"),
                      ),
                      const SizedBox(
                          height: 50,
                          width: 100,
                          child: Text("Electrician , Plumber & Carpenter",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 100,
                        child: Image.network(
                            "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_category/w_56,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/home-screen/1674120935535-f8d5c8.jpeg"),
                      ),
                      const SizedBox(
                          height: 50,
                          width: 100,
                          child: Text("Painting & Waterproofing",
                              textAlign: TextAlign.center)),
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "Trending now    ----------------------------------------",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 190,
                    child: Row(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "RO water ",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "purifires",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Image.network(
                            "https://res.cloudinary.com/urbanclap/image/upload/images/supply/customer-app-supply/1680074020999-6bd794.jpeg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 190,
                    child: Row(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Smart Door ",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Locks",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Image.network(
                            "https://s3-ap-southeast-1.amazonaws.com/urbanclap-prod/images/growth/luminosity/1699024510010-57aa08.jpeg"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Thoughful curations",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Of our ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "finest ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "experience ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 220,
                        width: 140,
                        "https://s3-ap-southeast-1.amazonaws.com/urbanclap-prod/images/growth/home-screen/1610430914433-935fba.jpeg",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 220,
                        width: 140,
                        "https://imgmedia.lbb.in/media/2020/04/5ea96ebc7daf1b156206a216_1588162236652.jpg",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 220,
                        width: 140,
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template,q_auto:low,f_auto/w_400,dpr_2,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/supply/customer-app-supply/1634203951594-0fbaae.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 220,
                        width: 140,
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template,q_auto:low,f_auto/w_600,dpr_2,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1654583236180-ac7fab.jpeg",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 220,
                        width: 140,
                        "https://www.businessinsider.in/thumb/msid-85447376,width-1200,height-900/urban-company-is-on-the-lookout-for-15000-service-professionals-as-it-wishes-to-tap-into-50-cities-by-the-end-of-this-year.jpg",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 220,
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 220,
                        width: 140,
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template,q_auto:low,f_auto/w_400,dpr_2,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/supply/customer-app-supply/1634200710656-ddfa4e.png",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 130,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 220,
                        width: 130,
                        "https://miro.medium.com/v2/resize:fit:1144/0*n5we7hfbMa8_RnoR",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 130,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 130,
                        width: 220,
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template,q_auto:low,f_auto/w_600,dpr_2,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/supply/customer-app-supply/1692600457098-9b30f0.jpeg",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 130,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 130,
                        width: 220,
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_category/w_400,dpr_2,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1704984895042-a719fe.jpeg",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 130,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 220,
                        width: 130,
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_category/w_400,dpr_2,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1695987154340-42756a.jpeg",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 130,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Image.network(
                        fit: BoxFit.cover,
                        height: 130,
                        width: 220,
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template,q_auto:low,f_auto/w_600,dpr_2,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1655116236586-307634.jpeg",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "New and noteworthy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              height: 100,
                              width: 100,
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1693911849479-1cf211.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Kitchen cleaning",
                            )),
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1700124385012-7be2b4.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Native smart locks",
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1687428458328-9e147d.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Native water purifier",
                            )),
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1651040419628-022a2b.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "House painters",
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1685362825553-834c0d.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Laser hair reduction",
                            )),
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1651040407144-95eb6e.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Spa Ayurveda",
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1651040420198-fe6d1d.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Hair studio for women",
                            )),
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1652853823570-152440.png"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "AC service and Repair",
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_1232,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1698216827166-bc6957.jpeg"),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Most Booked Services",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/supply/customer-app-supply/1669794373348-b9ed89.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Hydration facials & clean ups",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1658419126640-e79fa1.png"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Elisian British rose pedicure",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/home-screen/1659102409372-8ca38a.png"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Intense cleaning - 2 bathroom pack",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/home-screen/1677519626723-82ff21.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Haircut for men",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/supply/customer-app-supply/1670318258863-edafe3.jpeg"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Delux pedicure",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_1232,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1705694675551-f56016.jpeg"),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Quick Home Repairs",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1653890923765-57dea3.png"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Jet spray(installation/repair)",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1653654473556-534625.png"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "wash Basin Pipe leackage",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1653650789853-6a9d9d.png"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Drainage pipe block removal",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1653632250914-ca15c6.png"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Switchboard/Switchbox repair",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.network(
                              "https://res.cloudinary.com/urbanclap/image/upload/t_high_res_template/w_233,dpr_1,fl_progressive:steep,q_auto:low,f_auto,c_limit/images/growth/luminosity/1653918245354-14a137.png"),
                        ),
                        const SizedBox(
                            height: 50,
                            width: 120,
                            child: Text(
                              "Dor lock repair",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Column(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 200,
                        child: Text(
                          "Refer and get free services ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: Text(
                          " refer and get @100",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 140,
                    width: 150,
                    child: Image.network(
                        "https://www.idfcfirstbank.com/content/dam/idfcfirstbank/images/blog/earn-money-by-referring-personal-loan-717x404.jpg"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
