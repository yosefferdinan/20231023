import 'package:flutter/material.dart';
import 'package:fluttercrud/controller/PetugasController.dart';
import 'package:get/get.dart';

class Show_Petugas extends StatefulWidget {
  const Show_Petugas({super.key});

  @override
  State<Show_Petugas> createState() => _Show_PetugasState();
}

class _Show_PetugasState extends State<Show_Petugas> {
  @override
  Widget build(BuildContext context) {
    int index = Get.arguments["index"];
    PetugasController petugasController = Get.put(PetugasController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Nama :"),
                Text("${PetugasController.listsatu.value[index].nama}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Username :"),
                Text("${PetugasController.listsatu.value[index].username}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("telpon :"),
                Text("${PetugasController.listsatu.value[index].telp}"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Level :"),
                Text("${PetugasController.listsatu.value[index].telp}"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/edit", arguments: {"index": index});
                  },
                  child: const Text("Edit"),
                ),
                ElevatedButton(
                  onPressed: () {
                    PetugasController.destroyData(
                        "${PetugasController.listsatu.value[index].nik}");
                    Get.toNamed("/");
                  },
                  child: const Text("Hapus"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
