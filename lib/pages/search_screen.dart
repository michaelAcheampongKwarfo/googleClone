// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_clone/services/api_service.dart';
import 'package:google_clone/widgets/app_colors.dart';
import 'package:google_clone/widgets/app_text.dart';
import 'package:google_clone/widgets/search_footer.dart';
import 'package:google_clone/widgets/search_header.dart';
import 'package:google_clone/widgets/search_result_component.dart';
import 'package:google_clone/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;
  const SearchScreen(
      {super.key, required this.searchQuery, required this.start});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Title(
      color: Colors.blue,
      title: searchQuery,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header
              const SearchHeader(),
              //tabs
              Padding(
                padding: EdgeInsets.only(left: size.width <= 768 ? 10 : 150),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: const SearchTabs()),
              ),
              Divider(
                height: 0.0,
                thickness: 0.5,
              ),
              //search result
              FutureBuilder(
                  future: ApiService()
                      .fetchData(queryTerm: searchQuery, start: start),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: size.width <= 768 ? 10 : 150,
                              top: 12.0,
                            ),
                            child: AppText(
                              text:
                                  'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds )',
                              fontSize: 15,
                              color: Color(0xFF70757a),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data?['items'].length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: size.width <= 768 ? 10 : 150,
                                  top: 10,
                                ),
                                child: SearchResultComponent(
                                  link: snapshot.data?['items'][index]
                                      ['formattedUrl'],
                                  text: snapshot.data?['items'][index]['title'],
                                  linkToGo: snapshot.data?['items'][index]
                                      ['link'],
                                  description: snapshot.data?['items'][index]
                                      ['snippet'],
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      if (start != '0') {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => SearchScreen(
                                              searchQuery: searchQuery,
                                              start: (int.parse(start) - 10)
                                                  .toString(),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    child: AppText(
                                      text: '< Prev',
                                      color: AppColors.blueColor,
                                      fontSize: 15.0,
                                    )),
                                SizedBox(
                                  width: 30.0,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => SearchScreen(
                                          searchQuery: searchQuery,
                                          start: (int.parse(start) + 10)
                                              .toString(),
                                        ),
                                      ),
                                    );
                                  },
                                  child: AppText(
                                    text: 'Next >',
                                    color: AppColors.blueColor,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          const SearchFooter(),
                        ],
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
              //Pagination button
              // SizedBox(
              //   width: double.infinity,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       TextButton(
              //           onPressed: () {
              //             if (start != '0') {
              //               Navigator.of(context).push(
              //                 MaterialPageRoute(
              //                   builder: (context) => SearchScreen(
              //                     searchQuery: searchQuery,
              //                     start: (int.parse(start) - 10).toString(),
              //                   ),
              //                 ),
              //               );
              //             }
              //           },
              //           child: AppText(
              //             text: '< Prev',
              //             color: AppColors.blueColor,
              //             fontSize: 15.0,
              //           )),
              //       SizedBox(
              //         width: 30.0,
              //       ),
              //       TextButton(
              //         onPressed: () {
              //           Navigator.of(context).push(
              //             MaterialPageRoute(
              //               builder: (context) => SearchScreen(
              //                 searchQuery: searchQuery,
              //                 start: (int.parse(start) + 10).toString(),
              //               ),
              //             ),
              //           );
              //         },
              //         child: AppText(
              //           text: 'Next >',
              //           color: AppColors.blueColor,
              //           fontSize: 15.0,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 30.0,
              // ),
              // const SearchFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
