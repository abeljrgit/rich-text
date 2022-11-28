import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Markdown(data: '''

# Scope, Materiality and Stakeholder Engagement

## Scope

The Filinvest Hospitality Group (FHG) is composed of Filinvest Hospitality Corporation (FHC), an asset development company, and Chroma Hospitality Inc (CHI), the operator of the hotel and F&B assets.  
 
The scope of this report covers the non-financial or EESG performance of the head offices of the two companies as well as the hotel and restaurant operations of seven properties of Filinvest Hospitality, including the Mimosa golf course:   

-	Crimson Filinvest City Manila (CFCM)
-	Crimson Resort and Spa Boracay (CRSB)
-	Crimson Resort and Spa Mactan (CRSM)
-	Quest Hotel Cebu City (QHCC)
-	Quest Hotel Tagaytay City (QHTC)
-	Quest Plus Conference Center Clark (QPCC) and Mimosa Golf 
-	Timberland Highlands Resort (THR) 

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

The sustainability data index at the end of this report presents the EESG metrics for the Clark properties in a consolidated form. 

While there may be mention of the activities in properties currently under development and construction (e.g. Grafik Baguio), most of the disclosures cover the operating assets.   


## Materiality

The disclosures in this report are informed by the principles of materiality and focuses on the economic, environmental, social and governance (EESG) impacts of the operations and activities of FHG, as well as the management approach to the material topics listed.

Starting in late 2021, the FHG’s EESG team undertook an initial assessment of organizational processes, procedures, and policies to better understand how they relate to EESG issues.  Given the inability to undertake face to face meetings with stakeholders due to the continuing Covid-19 pandemic, the validation stage of the materiality assessment was done through online surveys and soliciting feedback from employees of FHG who were the key contacts of our various stakeholders, thus acting as proxies.  

It is expected that a full-blown materiality assessment with external stakeholders can be undertaken in 2023, consisting of various focus group discussions that will seek feedback and suggestions from the attendees.   

Material Topics which have an impact on both stakeholders and FHG 

| Environment	| Economy	| Social | Governance |
| ----------- | ------- | ------ | ---------- |
| Environmental Compliance	| Environmental Compliance	| Employee development  | Procurement Practices |
| Environmental Compliance	| Environmental Compliance	| Employee development  | Procurement Practices |


The insights from the materiality assessment were discussed by the FHG leaders leading to the formulation of the group’s Sustainability Framework which identifies the sustainability focus areas.

Incidentally, the Filinvest Hospitality Group signed up as a supporter to the Hotel Sustainability Basics (HSB) launched during the World Travel and Tourism Convention held in Manila in February 2022.  The HSB is a globally recognized and coordinated set of sustainability indicators that all hotels should implement as a minimum.  Developed by the industry for the industry, they represent twelve actions that are fundamental to hotel sustainability, covering aspects related to efficiency, planet and people.  The Filinvest Hospitality Group’s sustainability commitments completely align with the actions proposed under the HSB.


'''),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
