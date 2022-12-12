import 'package:date_time_picker/date_time_picker.dart';

import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  bool femaleValue = false;
  bool maleValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Data'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  "Nama Lengkap",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
              const TextFieldWidget(
                label: "name",
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: const Text(
                  "Jenis Kelamin",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: femaleValue,
                        onChanged: (value) {
                          setState(() {
                            femaleValue = value!;
                          });
                        },
                      ),
                      const Text('Female'),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: maleValue,
                        onChanged: (value) {
                          setState(() {
                            maleValue = value!;
                          });
                        },
                      ),
                      const Text('Male'),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "Tanggal Lahir",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 5),
              DateTimePicker(
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                decoration: const InputDecoration(
                  filled: true,
                ),
                icon: const Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Hour",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "Provinsi",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
              TextFieldWidget(
                label: 'Provinsi',
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "Kota/Kabupaten",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
              TextFieldWidget(
                label: 'Kota/Kabupaten',
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  "Foto Siswa",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
              TextFieldWidget(
                label: 'Foto Siswa',
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Simpan",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Cancel",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 26),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
