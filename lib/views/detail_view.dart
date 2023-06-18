import 'package:flutter/material.dart';
import 'package:submision_flutter_pemula/models/book_model.dart';

// ignore: must_be_immutable
class DetailView extends StatelessWidget {
  DetailView({required this.bookModel, super.key});

  BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${bookModel.title} (${bookModel.years})",
          style: const TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.grey[300],
        elevation: 0,
      ),
      body: ListView(
        children: [
          ClipRRect(
            child: Image.asset(
              bookModel.image.toString(),
              width: double.infinity,
              height: 300,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sinopsis Cerita",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  bookModel.desc.toString(),
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Pencipta : ${bookModel.create}",
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Rating Buku : ${bookModel.rate}",
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
