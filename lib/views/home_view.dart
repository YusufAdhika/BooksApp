import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:submision_flutter_pemula/views/detail_view.dart';
import 'package:submision_flutter_pemula/models/book_model.dart';
import 'package:submision_flutter_pemula/views/profile_view.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<BookModel> productList = BookModel.getBooks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                  top: 18, left: 18, right: 18, bottom: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat Membaca",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Temukan sinopsis berbagai buku terbaik",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )
                    ],
                  ),
                  Material(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () => Get.to(() => const ProfileView()),
                      borderRadius: BorderRadius.circular(30),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.person,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: productList.length,
            itemBuilder: (context, index) {
              var data = productList[index];
              return Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                child: Container(
                  height: 112,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.14),
                            spreadRadius: 0,
                            blurRadius: 14)
                      ]),
                  child: Material(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () => Get.to(() => DetailView(
                            bookModel: data,
                          )),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              data.image.toString(),
                              width: 115,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  data.years.toString(),
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                Text(
                                  data.title.toString(),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  data.create.toString(),
                                  style: const TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
             
              );
            },
          )
        ],
      ),
    );
  }
}
