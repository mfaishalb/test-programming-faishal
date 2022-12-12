import 'package:crud_rest_api/app/models/student.dart';
import 'package:flutter/material.dart';

class StudentCardWidget extends StatelessWidget {
  final Student _students;

  const StudentCardWidget(this._students, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              // SizedBox(
              //   width: 128,
              //   height: 128,
              //   child: Image.network(
              //     _students.photo,
              //     fit: BoxFit.cover,
              //     loadingBuilder: (BuildContext context, Widget child,
              //         ImageChunkEvent? loadingProgress) {
              //       if (loadingProgress == null) return child;
              //       return Center(
              //         child: CircularProgressIndicator(
              //           value: loadingProgress.expectedTotalBytes != null
              //               ? loadingProgress.cumulativeBytesLoaded /
              //                   loadingProgress.expectedTotalBytes!
              //               : null,
              //         ),
              //       );
              //     },
              //   ),
              // ),
              Container(
                width: 128,
                height: 128,
                color: Colors.grey,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        _students.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        _students.gender,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        _students.birthDate.toString(),
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        _students.province,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        _students.city,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
