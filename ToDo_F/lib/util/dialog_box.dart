import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey[100],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //kullanıcıdan veri girişi
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Görev Ekle",
              ),
            ),

            //butonlar => Kaydet + iptal et
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //kaydet butonu
                MyButton(text: "Kaydet", onPressed: onSave),

                const SizedBox(width: 8),

                // iptal et butonu
                MyButton(text: "İptal Et", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
