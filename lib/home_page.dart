import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildHeroSection(),
            _buildValueProp1(),
            _buildValueProp2(),
            _buildPricingSection(),
            _buildValueProp3(),
            _buildArticlesSection(),
            _buildValueProp4(),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.group, color: Colors.white, size: 24),
              ),
              const SizedBox(width: 12),
              const Text(
                'TeamSync',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Resources'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Enterprise'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Features'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Articles'),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Log in'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Request a demo'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      padding: const EdgeInsets.all(60),
      child: Row(
        children: [
          Image.network(
            'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d86886e0fd8482a47d321_Image-1.png',
            width: 400,
            height: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 60),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Supercharge Team Work',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  'With our project management, communication, and file sharing tools, you can work together seamlessly from anywhere in the world.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Try TeamSync'),
                    ),
                    const SizedBox(width: 12),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Request a demo'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildValueProp1() {
    return Container(
      padding: const EdgeInsets.all(60),
      child: Row(
        children: [
          Image.network(
            'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8710706a641fa29d6e9c_Illustration-1.png',
            width: 350,
            height: 280,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 60),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Streamline your work processes & boost productivity',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'With features like project management, task delegation, collaboration, and real-time notifications, you\'ll have everything you need to stay on top of your work.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildValueProp2() {
    return Container(
      padding: const EdgeInsets.all(60),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Access to your team on the go',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'Communicate in real-time with team members through our chat, video, and voice call features. Keep everyone up-to-date on project progress and updates.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(width: 60),
          Image.network(
            'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8807395e19c98865b100_Illustration-1-1.png',
            width: 350,
            height: 450,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Widget _buildPricingSection() {
    return Container(
      padding: const EdgeInsets.all(60),
      color: Colors.grey[50],
      child: Column(
        children: [
          Text(
            'Pricing',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Text(
            'Find a plan that fits all of your needs and more.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPricingCard(
                'Enterprise',
                'Reach out',
                [
                  'Access to all of Pro features',
                  'Premium support',
                  'Access to early bird feature releases',
                ],
                'Download',
              ),
              const SizedBox(width: 24),
              _buildPricingCard(
                'Enterprise',
                'Reach out',
                [
                  'Limited to 10 teammates',
                  'Unlimited teams',
                  'Unlimited storage space',
                  'Customized integrations',
                  'Access to advanced analytics',
                  'Access to beta features',
                ],
                'Subscribe for \$20/month',
              ),
              const SizedBox(width: 24),
              _buildPricingCard(
                'Enterprise',
                'Reach out',
                [
                  'Access to all of Pro features',
                  'Premium support',
                  'Access to early bird feature releases',
                ],
                'Reach out',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPricingCard(
      String title, String price, List<String> features, String buttonText) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            price,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          const SizedBox(height: 24),
          ...features.map((feature) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6, right: 8),
                      child: Icon(
                        Icons.check_circle,
                        size: 16,
                        color: Colors.blue[700],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        feature,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildValueProp3() {
    return Container(
      padding: const EdgeInsets.all(60),
      child: Row(
        children: [
          Image.network(
            'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8a463370c853bc38e3d7_Illustration-2-1.png',
            width: 450,
            height: 350,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 60),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Easily manage workflows for projects of any size',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'Stay organized and on track with our powerful project management tools. Assign tasks, set deadlines, and track progress in real-time.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArticlesSection() {
    return Container(
      padding: const EdgeInsets.all(60),
      child: Column(
        children: [
          Text(
            'Latest articles',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildArticleCard(
                'Time managament',
                'Jan 22, 2023',
                'Mastering time management: Tips and strategies for a more...',
                'Kate Vesa',
                'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8ad63cfd70a55e5a9663_Image.png',
                'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8ad7cbe8b7e2852ec2ee_Ellipse-10.png',
              ),
              const SizedBox(width: 24),
              _buildArticleCard(
                'Collaboration',
                'Feb 10, 2023',
                'The Power of Collaboration: Why Working Together is Key to Success...',
                'Tony Wilson',
                'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8ad8ae3cee8e90db4445_Image.png',
                'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8ad99e34f96204bec944_Ellipse-10.png',
              ),
              const SizedBox(width: 24),
              _buildArticleCard(
                'Meetings',
                'March 1, 2023',
                'Maximizing Productivity: How to Make Your Meetings More Effective...',
                'Rita Verna',
                'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8adacf44064d6fda226a_Image.png',
                'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8adbae3cee85d1db4446_Ellipse-10.png',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildArticleCard(String category, String date, String description,
      String author, String imageUrl, String authorImageUrl) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: 160,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      category,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      date,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        authorImageUrl,
                        width: 32,
                        height: 32,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      author,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildValueProp4() {
    return Container(
      padding: const EdgeInsets.all(60),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stay on track and never miss a beat',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'Get instant alerts and notifications about upcoming deadlines. Our chat feature allows you to quickly communicate with your team and get the support you need to meet all project requirements.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(width: 60),
          Image.network(
            'https://assets-global.website-files.com/642ad644644c1d199a312e4b/642d8b39395e193e8d682919_Illustration-3-1.png',
            width: 350,
            height: 280,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(60),
      color: Colors.grey[900],
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TeamSync',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.camera_alt, color: Colors.white, size: 24),
                  const SizedBox(width: 12),
                  Icon(Icons.chat, color: Colors.white, size: 24),
                  const SizedBox(width: 12),
                  Icon(Icons.favorite, color: Colors.white, size: 24),
                  const SizedBox(width: 12),
                  Icon(Icons.share, color: Colors.white, size: 24),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Features', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Resources', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Articles', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('FAQs', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Blogs', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Support', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Careers', style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Terms of Service',
                    style: TextStyle(color: Colors.white)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Privacy Policy',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
