import 'package:code_share/Widgets/FetchDocs/fetch_docs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool buttontap = false;
// ignore: non_constant_identifier_names
void show_Alert(BuildContext context, String text1, String text2, int flag) {
  TextEditingController controller = TextEditingController();
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(text1),
        content: Text(text2),
        actions: <Widget>[
          TextField(
            controller: controller,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              flag == 0
                  ? TextButton(
                      onPressed: () async {
                        if (!buttontap) {
                          buttontap = true;
                          write_case(context, controller.text);
                          buttontap = false;
                        }
                      },
                      child: const Text('Create'),
                    )
                  : TextButton(
                      onPressed: () async {
                        if (!buttontap) {
                          buttontap = true;
                          search_case(context, controller.text);
                          buttontap = false;
                        }
                      },
                      child: const Text('Search'),
                    ),
              TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
            ],
          ),
        ],
      );
    },
  );
}

// ignore: non_constant_identifier_names
void show_failure(BuildContext context) {
  buttontap = false;
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('NO Document Found'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'OK',
            ),
          ),
        ],
      );
    },
  );
}
