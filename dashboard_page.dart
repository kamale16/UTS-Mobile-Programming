import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget { 
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
     
      appBar: AppBar(
        
        automaticallyImplyLeading: false, 
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Belum ada notifikasi baru')),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context, 
                '/login', 
                (route) => false
              );
            },
          ),
        ],
      ),
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            
            Text(
              'Halo, kamal', 
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            
            SizedBox(height: 16),

            // Banner
            Image.network(
              'https://picsum.photos/600/300',
              height: 150, 
              width: double.infinity, 
              fit: BoxFit.cover
            ),
            
            SizedBox(height: 24),

            Text(
              'Menu Utama',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 16),
            
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              
                _buildMenuItem(
                  context: context,
                  icon: Icons.person,
                  label: 'Profil',
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                
             
                _buildMenuItem(
                  context: context,
                  icon: Icons.list,
                  label: 'Data',
                  onTap: () {
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Menu Data diklik')),
                    );
                  },
                ),

                
                _buildMenuItem(
                  context: context,
                  icon: Icons.settings,
                  label: 'Pengaturan',
                  onTap: () {
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Menu Pengaturan diklik')),
                    );
                  },
                ),
              ],
            ),

          ], 
        ), 
      ), 
    ); 
  } 

 
  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, size: 40, color: Theme.of(context).primaryColor),
          SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }

} 