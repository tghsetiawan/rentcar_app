import 'package:flutter/material.dart';
import 'package:rentcar_app/assets/images.dart';
import 'package:rentcar_app/pages/widgets/about_me_item.dart';
import 'package:rentcar_app/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri urlGithub = Uri.parse('https://github.com/tghsetiawan');
    final Uri urlLinkedin =
        Uri.parse('https://www.linkedin.com/in/teguh-setiawan-b30932132/');

    Future<void> _launchUrl(String url) async {
      switch (url) {
        case 'github':
          if (!await launchUrl(urlGithub)) {
            throw Exception('Could not launch $urlGithub');
          }
          break;
        case 'linkedin':
          if (!await launchUrl(urlLinkedin)) {
            throw Exception('Could not launch $urlLinkedin');
          }
          break;
        default:
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 22,
              horizontal: 30,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        imagaAvatar,
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Teguh Setiawan',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 40),
                AboutMeItem(
                  iconUrl: icWhatsapp,
                  title: '+62 857-1505-7018',
                  onTap: () {},
                ),
                AboutMeItem(
                  iconUrl: icGoogle,
                  title: 'tgh.setiawan16@gmail.com',
                  onTap: () {},
                ),
                AboutMeItem(
                  iconUrl: icLinkedin,
                  title: 'Teguh Setiawan',
                  onTap: () {
                    _launchUrl('linkedin');
                  },
                ),
                AboutMeItem(
                  iconUrl: icGithub,
                  title: 'tghsetiawan',
                  onTap: () {
                    _launchUrl('github');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
