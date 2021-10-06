import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({Key? key}) : super(key: key);

  @override
  _ApiScreenState createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    dio.options = BaseOptions(
      baseUrl: 'https://pokeapi.co/api/v2',
      // validateStatus: (int? status) {
      //   if (status != null) {
      //     return status < 400;
      //   }
      //   return false;
      // },
    );
    // dio.interceptors.add(
    //   //
    // );
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  late TextEditingController textEditingController;

  String? dummy;
  Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: <Widget>[
            SizedBox(height: 100),
            TextField(
              controller: textEditingController,
            ),
            ElevatedButton(
              child: Text('Find Pokemon'),
              onPressed: () async {
                try {
                  final Response<dynamic> resp = await dio.request(
                    '/pokemon/${textEditingController.text}',
                    options: Options(
                      method: 'get', // get post patch delete update dll.
                    ),
                  );

                  if (resp.statusCode == 200) {
                    Map<String, dynamic> data = resp.data;
                    dummy = data['sprites']['other']['official-artwork']
                        ['front_default'];
                    setState(() {});
                  } else {
                    dummy = null;
                  }
                  print(dummy);
                } catch (e) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Error'),
                      content: Text('Pokemon not found!'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Ok'),
                        )
                      ],
                    ),
                  );
                }
              },
            ),
            if (dummy != null)
              Image.network(
                dummy!,
              ),
          ],
        ),
      ),
    );
  }
}
