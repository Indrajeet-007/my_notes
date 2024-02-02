import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_notes/data/dummy_data.dart';

class Notes extends StatelessWidget {
  const Notes({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'My Notes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.black12,
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 8.0, right: 8.0, bottom: 8.0),
        child: GridView.builder(
          itemCount: notesData.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(10.0), // Set your desired border radius
              ),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    notesData[index]['title']!,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    notesData[index]['content']!,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}

