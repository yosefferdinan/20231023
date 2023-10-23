import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/petugascontroller.dart';
import 'package:get/get.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    PetugasController petugasController = Get.put(PetugasController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post masyarakat'),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 32, right: 32),
        child: Obx(
          () => petugasController.isloading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: petugasController.listsatu.value.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed("/show", arguments: {"index": index});
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
