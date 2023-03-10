import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ModalTawar extends ConsumerStatefulWidget {
  const ModalTawar({Key? key}) : super(key: key);

  @override
  ConsumerState<ModalTawar> createState() => _ModalTawarState();
}

class _ModalTawarState extends ConsumerState<ModalTawar> {
  TextEditingController tawarPostController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        height: 250.h,
        padding: EdgeInsets.all(30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Tawar Barang', style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w600),),
          SizedBox(height: 5,),
          Text('*harga barang harus lebih tinggi dari harga awal'),
          SizedBox(height: 5,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: tawarPostController,

              minLines: 1,
              // any number you need (It works as the rows for the text area)
              keyboardType: TextInputType.numberWithOptions(decimal: false, signed: false),
              inputFormatters:  [
              ],

              toolbarOptions: ToolbarOptions(selectAll: false,paste: false),
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)),
                hintText: 'IDR. -',
                prefixText: 'IDR. ',


              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Batal
              ElevatedButton(
                
                onPressed: () {
                //Navigate pop
                Navigator.pop(context);
              },

                child: Text('Batal'),
              ),

              //Confirm Tawar
              ElevatedButton(
                

                onPressed: () {
                //Navigate pop
                Navigator.pop(context);
              }, child: Text('Confirm'),

                style: ElevatedButton.styleFrom(
                    backgroundColor: (HexColor('#B1B2FF')),
                  fixedSize: Size(160, 40)
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
