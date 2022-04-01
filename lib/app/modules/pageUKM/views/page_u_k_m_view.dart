import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/page_u_k_m_controller.dart';

class PageUKMView extends GetView<PageUKMController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios,
          color: Color(0xFF22215B)),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.person,
            color: Color(0xFF22215B)),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right:22, left:20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text ("Berita Terbaru",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700
                ),
              ),
              TextButton(onPressed: (){}, child: Text("Lihat Semua")),
            ],
          ),
        ),
        SizedBox(height:24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardNews(
              image: Image.asset('assets/img/camping.png'),
              title:"Funcamp-Seni dan Budaya POLINDRA",
              date:"12 Januari 2022 - 12 Februari 2022"
              ),
              SizedBox(height:12),
              CardNews(
              image: Image.asset('assets/img/camping.png'),
              title:"Funcamp-Seni dan Budaya POLINDRA",
              date:"12 Januari 2022 - 12 Februari 2022"
              ),
              SizedBox(height:12),
              CardNews(
              image: Image.asset('assets/img/camping.png'),
              title:"Funcamp-Seni dan Budaya POLINDRA",
              date:"12 Januari 2022 - 12 Februari 2022"
              ),
              SizedBox(height:12),
              CardNews(
              image: Image.asset('assets/img/camping.png'),
              title:"Funcamp-Seni dan Budaya POLINDRA",
              date:"12 Januari 2022 - 12 Februari 2022"
              ),
              SizedBox(height:12),
              CardNews(
              image: Image.asset('assets/img/camping.png'),
              title:"Funcamp-Seni dan Budaya POLINDRA",
              date:"12 Januari 2022 - 12 Februari 2022"
              ),
              SizedBox(height:12),
              CardNews(
              image: Image.asset('assets/img/camping.png'),
              title:"Funcamp-Seni dan Budaya POLINDRA",
              date:"12 Januari 2022 - 12 Februari 2022"
              ),
              SizedBox(height:12),
              CardNews(
              image: Image.asset('assets/img/camping.png'),
              title:"Funcamp-Seni dan Budaya POLINDRA",
              date:"12 Januari 2022 - 12 Februari 2022"
              ),
              SizedBox(height:12),
              CardNews(
              image: Image.asset('assets/img/camping.png'),
              title:"Funcamp-Seni dan Budaya POLINDRA",
              date:"12 Januari 2022 - 12 Februari 2022"
              ),
              
            ],
          ),
        ),
        ],
      ),
    );
  }
}

class CardNews extends StatelessWidget {
  CardNews({
    Key? key,
    required this.title,
    required this.date,
    required this.image,
  }) : super(key: key);

  final String title,date;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      width: 350,
      height: 107,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFfDEDCDC),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,

        children: [
          Container(
            margin: const EdgeInsets.only(left:5,top: 13),
            width: Get.width * 0.2,
            child: image,
          ),
          Container(
          margin: const EdgeInsets.only(top: 15),
          child: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),),
          width: Get.width * 0.6,
          ),
          
        ],
      ),
    );
  }
}
