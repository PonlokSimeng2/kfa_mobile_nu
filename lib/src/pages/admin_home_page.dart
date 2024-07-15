import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('User List'),
              onTap: () {
                // TODO: Implement navigation to user list
              },
            ),
            ListTile(
              title: Text('Property'),
              onTap: () {
                // TODO: Implement navigation to property
              },
            ),
            ListTile(
              title: Text('Report'),
              onTap: () {
                // TODO: Implement navigation to report
              },
            ),
            ListTile(
              title: Text('Sign out'),
              onTap: () {
                // TODO: Implement sign out logic
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'User Statistics',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 300,
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(
                      color: Colors.blue,
                      value: 30,
                      title: 'Active',
                      radius: 100,
                    ),
                    PieChartSectionData(
                      color: Colors.red,
                      value: 15,
                      title: 'Inactive',
                      radius: 100,
                    ),
                    PieChartSectionData(
                      color: Colors.green,
                      value: 55,
                      title: 'New',
                      radius: 100,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildInfoCard('Today\'s Added Properties', '12'),
            const SizedBox(height: 20),
            _buildInfoCard('Pending Properties for Approval', '5'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement navigation to pending properties list
              },
              child: const Text('View Pending Properties'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
