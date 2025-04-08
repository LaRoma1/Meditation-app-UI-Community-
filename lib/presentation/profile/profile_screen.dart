import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Profil',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        // TODO: Naviguer vers la page des paramètres
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor.withOpacity(0.1),
                        ),
                        child: const Icon(
                          Icons.person,
                          size: 60,
                          color: AppColors.primaryColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CustomText(
                        text: 'Romaric Tene',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      const CustomText(
                        text: 'romaric.tene@gmail.com',
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                _buildProfileOption(
                  icon: Icons.person_outline,
                  title: 'Modifier le profil',
                  onTap: () {},
                ),
                _buildProfileOption(
                  icon: Icons.notifications_outlined,
                  title: 'Notifications',
                  onTap: () {},
                ),
                _buildProfileOption(
                  icon: Icons.lock_outline,
                  title: 'Sécurité',
                  onTap: () {},
                ),
                _buildProfileOption(
                  icon: Icons.help_outline,
                  title: 'Aide et support',
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implémenter la déconnexion
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.withOpacity(0.1),
                      foregroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                    ),
                    child: const CustomText(
                      text: 'Déconnexion',
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Icon(
              icon,
              size: 24,
              color: AppColors.primaryColor,
            ),
            const SizedBox(width: 20),
            CustomText(
              text: title,
              fontSize: 16,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}