import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BeautifulPieChartScreen extends StatelessWidget {
  const BeautifulPieChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900], // Dark purple background
      appBar: AppBar(
        title: const Text('Reports'),
        centerTitle: false,
        backgroundColor: Colors.purple[800],
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: _buildPieChart(),
          ),
          Expanded(
            flex: 3,
            child: _buildTotalSection(),
          ),
        ],
      ),
    );
  }

  Widget _buildPieChart() {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: Colors.yellow[400], // Changed to yellow for rent
            value: 30,
            title: '30%',
            radius: 100,
            titleStyle: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          PieChartSectionData(
            color: Colors.blue[400], // Changed to blue for sale
            value: 20,
            title: '20%',
            radius: 100,
            titleStyle: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 104, 98, 108),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTotalItem('Total Rent', '567,890', Colors.yellow[400]!),
          _buildTotalItem('Total Sale', '1,234,567', Colors.blue[400]!),
        ],
      ),
    );
  }

  Widget _buildTotalItem(String title, String amount, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors
          .purple[700], // Slightly lighter than the background for contrast
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              amount,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
