import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kode/modules/app_routes.dart';

class OnboardingPage extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                _buildPage(
                  image: 'lib/design_system/illustration/onboard1.png',
                  title: 'Selamat datang di gojek!',
                  subtitle: 'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhan mu, kapanpun, dan di manapun',
                ),
                _buildPage(
                  image: 'lib/design_system/illustration/onboard2.png',
                  title: 'Transportasi & logistik',
                  subtitle: 'Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~',
                ),
                _buildPage(
                  image: 'lib/design_system/illustration/onboard3.png',
                  title: 'Pesan makan & belanja',
                  subtitle: 'Lagi ngidam sesuatu? Gojek beliin gak pakai lama.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF00AA13),
                    ),
                    onPressed: () => Get.toNamed(AppRoutes.login),
                    child: Text('Masuk', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                  },
                  child: Text(
                    'Belum ada akun?, Daftar dulu',
                    style: TextStyle(color: Color(0xFF00AA13)),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage({required String image, required String title, required String subtitle}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 200),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}