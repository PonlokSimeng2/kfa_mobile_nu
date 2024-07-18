import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RealEstateAdminDashboard extends StatefulWidget {
  const RealEstateAdminDashboard({super.key});

  @override
  _RealEstateAdminDashboardState createState() => _RealEstateAdminDashboardState();
}

class _RealEstateAdminDashboardState extends State<RealEstateAdminDashboard> {
  String activeTab = 'pending';

  final List<Map<String, dynamic>> properties = [
    {
      "title": "Luxury Apartment",
      "price": "\$500,000",
      "status": "pending",
      "address": "123 Main St, City",
      "thumbnail": "https://via.placeholder.com/150",
    },
    {
      "title": "Suburban House",
      "price": "\$350,000",
      "status": "approved",
      "address": "456 Oak Ave, Suburb",
      "thumbnail": "https://via.placeholder.com/150",
    },
    {
      "title": "Downtown Condo",
      "price": "\$425,000",
      "status": "rejected",
      "address": "789 Pine St, Downtown",
      "thumbnail": "https://via.placeholder.com/150",
    },
    {
      "title": "Beachfront Villa",
      "price": "\$1,200,000",
      "status": "pending",
      "address": "101 Beach Rd, Coast",
      "thumbnail": "https://via.placeholder.com/150",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Property Report',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 200,
                      child: PieChart(
                        PieChartData(
                          sections: [
                            PieChartSectionData(
                              color: const Color(0xFF0088FE),
                              value: 1245,
                              title: '58%',
                              radius: 50,
                            ),
                            PieChartSectionData(
                              color: const Color(0xFF00C49F),
                              value: 498,
                              title: '23%',
                              radius: 50,
                            ),
                            PieChartSectionData(
                              color: const Color(0xFFFFBB28),
                              value: 412,
                              title: '19%',
                              radius: 50,
                            ),
                          ],
                          centerSpaceRadius: 40,
                          sectionsSpace: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey[200]!),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: ['All', 'Pending', 'Approved', 'Rejected']
                            .map((tab) => _buildTabButton(tab))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 300, // Adjust this value as needed
                      child: ListView(
                        children: properties
                            .where(
                              (prop) =>
                                  activeTab.toLowerCase() == 'all' ||
                                  prop['status'] == activeTab.toLowerCase(),
                            )
                            .map((prop) => _buildListItem(prop))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabButton(String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          activeTab = label.toLowerCase();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color:
                  activeTab.toLowerCase() == label.toLowerCase() ? Colors.blue : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: activeTab.toLowerCase() == label.toLowerCase() ? Colors.blue : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(Map<String, dynamic> property) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]!),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              property['thumbnail'],
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  property['title'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  property['address'],
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                Text(
                  property['price'],
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: property['status'] == 'pending'
                      ? Colors.yellow[100]
                      : property['status'] == 'approved'
                          ? Colors.green[100]
                          : Colors.red[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  property['status'].toUpperCase(),
                  style: TextStyle(
                    color: property['status'] == 'pending'
                        ? Colors.yellow[800]
                        : property['status'] == 'approved'
                            ? Colors.green[800]
                            : Colors.red[800],
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              const Icon(Icons.chevron_right, color: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}
