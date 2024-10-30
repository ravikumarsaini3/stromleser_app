import 'package:flutter/material.dart';

void main() {
  runApp(const StromleserApp());
}

class StromleserApp extends StatelessWidget {
  const StromleserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stromleser App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const StromleserScreen(),
    );
  }
}

class StromleserScreen extends StatelessWidget {
  const StromleserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("MoeCellNicco"),
        actions: const [
          Icon(Icons.settings),
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: Column(
          children: [
            // Device Image
            SizedBox(
              height: height * 0.2,
              child: Center(
                child: Image.network(
                  'https://i5.walmartimages.com/asr/68cbdc8b-fe8d-43cb-87a5-54b4e515853d.5fe4751b9825c3be9f48ad9f05ab0715.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF', // Replace with actual image URL
                  fit: BoxFit.fill,
                  height: height * 0.15,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),

            // Device Status Card
            Container(
              padding: EdgeInsets.all(width * 0.04),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Ausgang',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),

            // Power and Timer Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * 0.08,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.power_settings_new,
                        size: 40, color: Colors.white),
                    onPressed: () {
                      // Power button action
                    },
                  ),
                ),
                Container(
                  height: height * 0.08,
                  width: width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    icon:
                        const Icon(Icons.timer, size: 40, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.1),

            // Energy Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Energy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Date Picker action
                  },
                  icon: const Icon(Icons.calendar_today, color: Colors.white),
                  label: const Text(
                    '2024-10-25',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.05),

            // Consumption Display
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Consumption',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            const Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
