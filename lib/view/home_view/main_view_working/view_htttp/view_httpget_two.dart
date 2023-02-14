import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_working/view_htttp/apiservices.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_working/view_htttp/data_class.dart';

class ViewHttpGetTwo extends StatefulWidget {
  const ViewHttpGetTwo({Key? key}) : super(key: key);

  @override
  State<ViewHttpGetTwo> createState() => _ViewHttpGetTwoState();
}

class _ViewHttpGetTwoState extends State<ViewHttpGetTwo> {
  Services serviceApi = Services();
  late Future<List<CData>> listData;

  @override
  void initState() {
    super.initState();

    listData = serviceApi.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("HTTP Get Two ")),
        ),
        body: Center(
          child: FutureBuilder<List<CData>>(
            future: listData,
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                List<CData> isiData = snapshot.data!;
                return ListView.builder(
                  itemCount: isiData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        title: Card(
                      margin: const EdgeInsets.all(5),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  // child: Text(isiData[index].cId),
                                  // radius: 30.0,
                                  backgroundImage:
                                      NetworkImage(isiData[index].cAvatar),
                                  backgroundColor: Colors.transparent,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Name : ${isiData[index].cName} "),
                                      Text(
                                        "email : ${isiData[index].cEmail}  ",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                          "Pekerjaan : ${isiData[index].cPekerjaan}  "),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            // scrol SingleChildScrollView = lisview
                          ],
                        ),
                      ),
                    ));
                  },
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const CircularProgressIndicator();
            }),
          ),
        ));
  }
}
