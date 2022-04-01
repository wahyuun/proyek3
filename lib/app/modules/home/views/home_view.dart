import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../login/views/login_view.dart';
import '../controllers/home_controller.dart';
import '../../../routes/app_pages.dart';


class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              child: Image.asset(
                "assets/img/tia.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 60),
            Text(
              "PUSAT INFORMASI UKM POLINDRA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra lacus, lorem neque, quam lacus volutpat ullamcorper. Et feugiat morbi.... ",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF8C8C8C),
              ),
            
            ),
            SizedBox(height: 40),
            Container(
              width: Get.width,
              child: ElevatedButton(
                child: Text("Masuk"),
                onPressed: () {
        // pindah ke halaman simple
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Get.width,
              
              child: ElevatedButton(
                child: Text("Masuk sebagai tamu",
                style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
        // pindah ke halaman simple
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.black),

                    ),
                    
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class HomeView extends StatefulWidget {
//   const HomeView({Key?key}) : super(key: key);
//   @override
//   HomePageState createState() =>HomePageState();
// }

// class HomePageState extends State<HomeView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF69c5df),
//       body: 
//       Stack(
//         children: [
//           Positioned(
//             top:0,
//             left: 0, 
//             height: 700,
//             child: Container(
//               height: 700,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("img/budaya.jpg"),
//                   fit: BoxFit.cover
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             left: 20,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Pilih Favoritmu!",
//                 style: TextStyle(
//                   fontSize: 32,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w600
//                 ),),
//                 Text("Konten",
//                   style: TextStyle(
//                     fontSize: 32,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600
//                   ),),
//                 SizedBox(height: 40,),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width-25,
//                   child: Text("Ini aplikasi UKM sederhana!",
//                   style: TextStyle(
//                     color: Colors.white60
//                   ),),),
//                 SizedBox(height: 40),
//                 Container(
//                   width: 200,
//                   height: 70,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(20),
                  //   color: Color(0xFffbc33e)
                  // ),
//                 child: ElevatedButton(
                  
//                   style: ElevatedButton.styleFrom(
//                     elevation: 0,
//                     primary: Color(0xFFfbc33e),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                     ),),
//                   onPressed: ()=>Get.toNamed(Routes.LOGIN),
//                   child: Text(
//                     "Get Started",
//                     style: TextStyle(
//                       color: Colors.white
//                     ),
//                   ),
//                 ),
//                 ),
//                 SizedBox(height: 70,),
//               ],
//             ),
//             ),
//         ],
//       ),
//     );
//   }
// }
