import 'package:flutter/foundation.dart';
import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _products = const [
    Product(
      id: 'p1',
      title: 'iPhone 16 Pro Max 256GB',
      category: 'Smartfonlar',
      price: 16800000,
      description:
          'Apple iPhone 16 Pro Max – eng ilgʻor A18 Pro protsessori, titan korpus, 48MP asosiy kamera va sunʼiy intellekt (Apple Intelligence) imkoniyatlariga ega flagman smartfon.',
      imageUrl:
          'https://images.unsplash.com/photo-1695048133142-1a20484d2569?w=600&auto=format&fit=crop&q=80',
      rating: 4.9,
      reviewsCount: 342,
      brand: 'Apple',
      features: [
        'Ekran: 6.9" Super Retina XDR OLED 120Hz',
        'Protsessor: Apple A18 Pro',
        'Xotira: 256 GB',
        'Kamera: 48 MP + 48 MP + 12 MP (5x optik zoom)',
        'Korpus: 5-darajali titan',
      ],
    ),
    Product(
      id: 'p2',
      title: 'Samsung Galaxy S25 Ultra 512GB',
      category: 'Smartfonlar',
      price: 15400000,
      description:
          'Samsung Galaxy S25 Ultra – Snapdragon 8 Elite protsessori, oʻrnatilgan S-Pen qalami, 200MP kamerasi va Galaxy AI tizimi bilan mukammal mahsuldorlik.',
      imageUrl:
          'https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=600&auto=format&fit=crop&q=80',
      rating: 4.8,
      reviewsCount: 215,
      brand: 'Samsung',
      features: [
        'Ekran: 6.8" Dynamic AMOLED 2X 120Hz',
        'Protsessor: Snapdragon 8 Elite for Galaxy',
        'Xotira: 512 GB / 12 GB RAM',
        'Kamera: 200 MP + 50 MP + 50 MP + 10 MP',
        'Akkumulyator: 5000 mA/soat, 45W tezkor quvvatlash',
      ],
    ),
    Product(
      id: 'p3',
      title: 'Google Pixel 9 Pro XL 256GB',
      category: 'Smartfonlar',
      price: 13900000,
      description:
          'Google Tensor G4 chipi, ilgʻor Gemini AI imkoniyatlari, professional darajadagi kameralar va 7 yillik rasmiy Android yangilanish kafolati.',
      imageUrl:
          'https://images.unsplash.com/photo-1598327105666-5b89351aff97?w=600&auto=format&fit=crop&q=80',
      rating: 4.7,
      reviewsCount: 140,
      brand: 'Google',
      features: [
        'Ekran: 6.8" Super Actua LTPO OLED 120Hz',
        'Protsessor: Google Tensor G4',
        'Xotira: 256 GB / 16 GB RAM',
        'Kamera: 50 MP asosiy + 48 MP telephoto + 48 MP ultrawide',
        'Xavfsizlik: Titan M2 xavfsizlik chipi',
      ],
    ),
    Product(
      id: 'p4',
      title: 'Xiaomi 14 Ultra Photography Kit',
      category: 'Smartfonlar',
      price: 12500000,
      description:
          'Leica optikasi, 1 dyuymli ulkan sensor, mexanik diafragma va professional suratga olish dastasi bilan haqiqiy fotosurat ixlosmandlari uchun.',
      imageUrl:
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=600&auto=format&fit=crop&q=80',
      rating: 4.8,
      reviewsCount: 185,
      brand: 'Xiaomi',
      features: [
        'Ekran: 6.73" AMOLED WQHD+ 120Hz',
        'Protsessor: Snapdragon 8 Gen 3',
        'Kamera: 4 ta 50MP Leica linzasi',
        'Quvvatlash: 90W simli, 80W simsiz HyperCharge',
        'Akkumulyator: 5000 mA/soat',
      ],
    ),
    Product(
      id: 'p5',
      title: 'MacBook Pro 14" M4 Pro 24GB/512GB',
      category: 'Noutbuklar',
      price: 26500000,
      description:
          'Apple MacBook Pro 14 – yangi M4 Pro chipi, Liquid Retina XDR displey va 24 soatgacha davom etadigan batareya quvvati bilan professional mutaxassislar uchun ideal noutbuk.',
      imageUrl:
          'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=600&auto=format&fit=crop&q=80',
      rating: 5.0,
      reviewsCount: 128,
      brand: 'Apple',
      features: [
        'Ekran: 14.2" Liquid Retina XDR (1600 nit)',
        'Protsessor: Apple M4 Pro (14 yadroli)',
        'Operativ xotira: 24 GB Unified Memory',
        'Doimiy xotira: 512 GB SSD',
        'Portlar: 3x Thunderbolt 5, HDMI, SDXC, MagSafe 3',
      ],
    ),
    Product(
      id: 'p6',
      title: 'MacBook Air 15" M3 16GB/512GB',
      category: 'Noutbuklar',
      price: 18200000,
      description:
          'Oʻta yupqa va yengil korpus, kuchli M3 chipi, fanatsiz jim ishlovchi arxitektura va kun boʻyi yetadigan 18 soatlik avtonomiya.',
      imageUrl:
          'https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?w=600&auto=format&fit=crop&q=80',
      rating: 4.9,
      reviewsCount: 220,
      brand: 'Apple',
      features: [
        'Ekran: 15.3" Liquid Retina 500 nit',
        'Protsessor: Apple M3 8-yadroli CPU, 10-yadroli GPU',
        'Xotira: 16 GB RAM / 512 GB SSD',
        'Vazni: Bor-yoʻgʻi 1.51 kg',
        'Audio: 6 karnayli fazoviy ovoz tizimi',
      ],
    ),
    Product(
      id: 'p7',
      title: 'ASUS ROG Zephyrus G16 OLED',
      category: 'Noutbuklar',
      price: 29900000,
      description:
          'Intel Core Ultra 9 va NVIDIA GeForce RTX 4080 bilan jihozlangan, 240Hz ROG Nebula OLED displeyli premium geymer noutbuki.',
      imageUrl:
          'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=600&auto=format&fit=crop&q=80',
      rating: 4.9,
      reviewsCount: 94,
      brand: 'ASUS',
      features: [
        'Ekran: 16" 2.5K OLED 240Hz 0.2ms',
        'Protsessor: Intel Core Ultra 9 185H',
        'Videokarta: NVIDIA GeForce RTX 4080 12GB',
        'Xotira: 32 GB LPDDR5X / 1 TB NVMe SSD',
        'Sovutish: ROG Intelligent Cooling bugʻ kamerali',
      ],
    ),
    Product(
      id: 'p8',
      title: 'Dell XPS 14 Core Ultra 7',
      category: 'Noutbuklar',
      price: 23800000,
      description:
          'CNC alyuminiy va Gorilla Glass korpus, yashirin sensorli trekpad va 3.2K OLED sensorli ekranli zamonaviy dizayn durdonasi.',
      imageUrl:
          'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?w=600&auto=format&fit=crop&q=80',
      rating: 4.6,
      reviewsCount: 76,
      brand: 'Dell',
      features: [
        'Ekran: 14.5" 3.2K OLED Touch 120Hz',
        'Protsessor: Intel Core Ultra 7 155H',
        'Grafika: NVIDIA RTX 4050 6GB',
        'Xotira: 16 GB / 1 TB SSD',
        'Dizayn: Choksiz shisha trekpad va sensorli panel',
      ],
    ),
    Product(
      id: 'p9',
      title: 'Sony WH-1000XM5 Simsiz Quloqchin',
      category: 'Quloqchinlar',
      price: 4350000,
      description:
          'Bozordagi eng kuchli shovqinni bekor qilish (Active Noise Cancellation) texnologiyasi, LDAC yuqori sifatli ovoz va 30 soatgacha avtonom ishlash imkoniyati.',
      imageUrl:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=80',
      rating: 4.9,
      reviewsCount: 489,
      brand: 'Sony',
      features: [
        'Shovqinni pasaytirish: 8 mikrofonli Auto NC Optimizer',
        'Akkumulyator: 30 soatgacha',
        'Ovoz: Hi-Res Audio, LDAC va DSEE Extreme',
        'Ogʻirligi: 250 gramm, juda yengil va yumshoq',
        'Boshqaruv: Sensorli panel va ovozli boshqaruv',
      ],
    ),
    Product(
      id: 'p10',
      title: 'AirPods Pro (2-avlod) USB-C',
      category: 'Quloqchinlar',
      price: 3100000,
      description:
          'Apple H2 chipi, 2 baravar kuchliroq shovqinni bostirish, Adaptive Audio, Conversation Awareness va IP54 chang va suvdan himoyalangan gʻilof.',
      imageUrl:
          'https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?w=600&auto=format&fit=crop&q=80',
      rating: 4.8,
      reviewsCount: 520,
      brand: 'Apple',
      features: [
        'Protsessor: Apple H2 quloqchinlarda, U1 gʻilofda',
        'Xususiyat: Fazoviy audio (Spatial Audio) dinamik bosh harakati bilan',
        'Batareya: Bir zaryadda 6 soat, gʻilof bilan 30 soat',
        'Ulanish: Bluetooth 5.3, MagSafe va USB-C',
      ],
    ),
    Product(
      id: 'p11',
      title: 'Marshall Major V Bluetooth',
      category: 'Quloqchinlar',
      price: 2150000,
      description:
          'Klassik rok-n-roll dizayni, afsonaviy Marshall ovozi, 100+ soatlik misli koʻrilmagan batareya umri va simsiz quvvatlash imkoniyati.',
      imageUrl:
          'https://images.unsplash.com/photo-1546435770-a3e426bf472b?w=600&auto=format&fit=crop&q=80',
      rating: 4.7,
      reviewsCount: 312,
      brand: 'Marshall',
      features: [
        'Batareya: 100 dan ortiq soat simsiz tinglash',
        'Quvvatlash: 15 daqiqada 15 soatlik quvvat olish',
        'Dizayn: Buklanadigan qulay metall korpus',
        'Boshqaruv: Koʻp funksiyali oltin tugmacha (M-button)',
      ],
    ),
    Product(
      id: 'p12',
      title: 'Bose QuietComfort Ultra',
      category: 'Quloqchinlar',
      price: 5200000,
      description:
          'Bose Immersive Audio texnologiyasi orqali har qanday qoʻshiqni fazoviy teatr ovoziga aylantiruvchi premium shovqinsiz quloqchin.',
      imageUrl:
          'https://images.unsplash.com/photo-1583394838336-acd977736f90?w=600&auto=format&fit=crop&q=80',
      rating: 4.8,
      reviewsCount: 164,
      brand: 'Bose',
      features: [
        'Shovqinsizlantirish: World-class ANC CustomTune bilan',
        'Fazoviy audio: Bose Immersive Audio',
        'Qulaylik: Ultra-yumshoq oqsil charm yostiqchalar',
        'Batareya: 24 soatgacha toʻxtovsiz musiqiy rohat',
      ],
    ),
    Product(
      id: 'p13',
      title: 'Apple Watch Series 10 Titanium 46mm',
      category: 'Aqlli soatlar',
      price: 8900000,
      description:
          'Yangi yupqaroq korpus, eng katta keng burchakli OLED ekran, nafas olish buzilishlarini (sleep apnea) aniqlash va tezkor quvvatlash tizimi.',
      imageUrl:
          'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600&auto=format&fit=crop&q=80',
      rating: 4.7,
      reviewsCount: 167,
      brand: 'Apple',
      features: [
        'Ekran: Keng burchakli Always-On OLED',
        'Sensorlar: EKG, yurak urishi, SpO2, harorat',
        'Suvga chidamlilik: 50 metrgacha (WR50)',
        'Quvvatlash: 30 daqiqada 80% gacha quvvat',
      ],
    ),
    Product(
      id: 'p14',
      title: 'Samsung Galaxy Watch Ultra 47mm',
      category: 'Aqlli soatlar',
      price: 7400000,
      description:
          'Ekstremal sharoitlar uchun 4-darajali titan korpus, 100 metrgacha suv oʻtkazmaslik, ikki chastotali GPS va 100 soatlik quvvat tejash rejimi.',
      imageUrl:
          'https://images.unsplash.com/photo-1508685096489-7aacd43bd3b1?w=600&auto=format&fit=crop&q=80',
      rating: 4.8,
      reviewsCount: 198,
      brand: 'Samsung',
      features: [
        'Displey: 1.5" Super AMOLED 3000 nit yorugʻlik',
        'Himoya: 10ATM, IP68, MIL-STD-810H',
        'Batareya: 590 mA/soat, 100 soatgacha quvvat',
        'Funksiyalar: Qon bosimi, EKG, sirena chaqiruvi',
      ],
    ),
    Product(
      id: 'p15',
      title: 'Garmin Fenix 8 Solar Sapphire',
      category: 'Aqlli soatlar',
      price: 13500000,
      description:
          'Quyoshdan quvvat oluvchi safir oyna, oʻrnatilgan LED fonar, shoʻngʻish datchigi va professional topografik xaritalar.',
      imageUrl:
          'https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?w=600&auto=format&fit=crop&q=80',
      rating: 4.9,
      reviewsCount: 112,
      brand: 'Garmin',
      features: [
        'Batareya: Quyosh energiyasi bilan 48 kungacha',
        'Ekran: Power Sapphire quyosh panelli displey',
        'Xususiyat: 40 metr chuqurlikka shoʻngʻish sertifikati',
        'Navigatsiya: Multi-Band GNSS va SatIQ texnologiyasi',
      ],
    ),
    Product(
      id: 'p16',
      title: 'Sony PlayStation 5 Pro 2TB',
      category: 'Geyming',
      price: 11200000,
      description:
          'PlayStation Spectral Super Resolution (PSSR), 67% kuchliroq grafik protsessor va ilgʻor Ray Tracing bilan 4K 60FPS/120FPS oʻyin tajribasi.',
      imageUrl:
          'https://images.unsplash.com/photo-1606813907291-d86efa9b94db?w=600&auto=format&fit=crop&q=80',
      rating: 4.9,
      reviewsCount: 310,
      brand: 'Sony',
      features: [
        'Xotira: 2 TB Ultra-Fast NVMe SSD',
        'Grafika: RDNA arxitekturasi, PSSR AI Upscaling',
        'Komplektda: DualSense simsiz geympadi',
        'Audio: Tempest 3D AudioTech',
      ],
    ),
    Product(
      id: 'p17',
      title: 'Nintendo Switch – OLED Mario Red Edition',
      category: 'Geyming',
      price: 4500000,
      description:
          'Yorqin 7 dyuymli chuqur rangli OLED ekran, takomillashtirilgan ovoz, 64GB xotira va afsonaviy Mario qizil maxsus nashri.',
      imageUrl:
          'https://images.unsplash.com/photo-1578301978693-85fa9c0320b9?w=600&auto=format&fit=crop&q=80',
      rating: 4.8,
      reviewsCount: 420,
      brand: 'Nintendo',
      features: [
        'Ekran: 7.0" jonli OLED multi-touch',
        'Rejimlar: TV rejimi, Stol rejimi, Qoʻl rejimi',
        'Audio: Oʻrnatilgan kengaytirilgan dinamiklar',
        'Dok-stansiya: Oʻrnatilgan simli LAN porti',
      ],
    ),
    Product(
      id: 'p18',
      title: 'Xbox Series X 1TB Carbon Black',
      category: 'Geyming',
      price: 7900000,
      description:
          '12 teraflops hisoblash quvvati, Xbox Velocity Architecture, Quick Resume orqali oʻyinlar oʻrtasida bir zumda almashish va 4K 120FPS imkoniyati.',
      imageUrl:
          'https://images.unsplash.com/photo-1621259182978-fbf93132d53d?w=600&auto=format&fit=crop&q=80',
      rating: 4.7,
      reviewsCount: 260,
      brand: 'Microsoft',
      features: [
        'Quvvat: 12 TFLOPS grafik unumdorlik',
        'Xotira: 1 TB maxsus tezkor NVMe SSD',
        'Texnologiya: DirectX Raytracing va Dolby Vision',
        'Moslik: 4 avlod Xbox oʻyinlarini qoʻllab-quvvatlash',
      ],
    ),
    Product(
      id: 'p19',
      title: 'Dyson Airwrap Multi-Styler Complete',
      category: 'Goʻzallik & Parvarish',
      price: 7800000,
      description:
          'Coanda aerodinamik effekti orqali sochlarni haddan tashqari qizdirmasdan turmaklash, jingalak qilish va quritish imkonini beruvchi innovatsion stiler.',
      imageUrl:
          'https://images.unsplash.com/photo-1522337360788-8b13dee7a37e?w=600&auto=format&fit=crop&q=80',
      rating: 4.9,
      reviewsCount: 295,
      brand: 'Dyson',
      features: [
        'Dvigatel: Dyson V9 raqamli motor',
        'Texnologiya: Haroratni nazorat qiluvchi aqlli sensor (soniyasiga 40 marta)',
        'Qoʻshimcha boshchalar: 6 xil turmaklash kallaklari',
        'Gʻilof: Maxsus charm saqlash qutisi',
      ],
    ),
    Product(
      id: 'p20',
      title: 'Braun Series 9 Pro+ Elektr Ustarasi',
      category: 'Goʻzallik & Parvarish',
      price: 4900000,
      description:
          'Germaniyada ishlab chiqarilgan eng samarali elektr ustara: soniyasiga 40 000 kesish harakati, ProLift trimeri va 5 tasi 1 da SmartCare tozalash markazi.',
      imageUrl:
          'https://images.unsplash.com/photo-1621607512214-68297480165e?w=600&auto=format&fit=crop&q=80',
      rating: 4.8,
      reviewsCount: 178,
      brand: 'Braun',
      features: [
        'Pichoqlar: 5 ta sinxronlashgan kesuvchi element',
        'Texnologiya: Sonic Technology va AutoSense moslashuvi',
        'Akkumulyator: 60 daqiqalik Li-Ion quvvati',
        'Tozalash: 5-in-1 SmartCare markazi bilan birga',
      ],
    ),
    Product(
      id: 'p21',
      title: 'iPad Pro 13" M4 Ultra-Thin OLED 256GB',
      category: 'Smartfonlar',
      price: 17900000,
      description:
          'Bor-yoʻgʻi 5.1 mm qalinlikdagi eng yupqa Apple qurilmasi. Tandem OLED Ultra Retina XDR displey va inqilobiy Apple M4 sunʼiy intellekt chipi.',
      imageUrl:
          'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=600&auto=format&fit=crop&q=80',
      rating: 5.0,
      reviewsCount: 240,
      brand: 'Apple',
      features: [
        'Ekran: 13.0" Tandem OLED Ultra Retina XDR 1600 nit',
        'Protsessor: Apple M4 (NPU 38 trillion amallar/sekund)',
        'Qalinligi: 5.1 mm (tarixdagi eng yupqa mahsulot)',
        'Aksessuar mosligi: Apple Pencil Pro va Magic Keyboard',
      ],
    ),
    Product(
      id: 'p22',
      title: 'DJI Mini 4 Pro Fly More Combo',
      category: 'Geyming',
      price: 12900000,
      description:
          'Bor-yoʻgʻi 249 gramm vaznli litsenziyasiz uchuvchi dron. 4K 60FPS HDR vertikal video, har tomonlama toʻsiqlarni sezish va 20 km masofaga video uzatish.',
      imageUrl:
          'https://images.unsplash.com/photo-1508614589041-895b88991e3e?w=600&auto=format&fit=crop&q=80',
      rating: 4.9,
      reviewsCount: 380,
      brand: 'DJI',
      features: [
        'Vazni: 249 g (roʻyxatdan oʻtish talab etilmaydi)',
        'Kamera: 4K/60fps HDR, haqiqiy vertikal suratga olish',
        'Xavfsizlik: Omnidirectional (360 daraja) toʻsiq aniqlash',
        'Uchish vaqti: 3 ta batareya bilan jami 100+ daqiqa',
      ],
    ),
  ];

  String _selectedCategory = 'Barchasi';
  String _searchQuery = '';

  List<Product> get products => _products;

  String get selectedCategory => _selectedCategory;
  String get searchQuery => _searchQuery;

  List<String> get categories {
    final set = <String>{'Barchasi'};
    for (var p in _products) {
      set.add(p.category);
    }
    return set.toList();
  }

  void selectCategory(String category) {
    if (_selectedCategory != category) {
      _selectedCategory = category;
      notifyListeners();
    }
  }

  void setSearchQuery(String query) {
    _searchQuery = query.trim().toLowerCase();
    notifyListeners();
  }

  List<Product> get filteredProducts {
    return _products.where((product) {
      final matchesCategory =
          _selectedCategory == 'Barchasi' || product.category == _selectedCategory;
      final matchesQuery = _searchQuery.isEmpty ||
          product.title.toLowerCase().contains(_searchQuery) ||
          product.brand.toLowerCase().contains(_searchQuery) ||
          product.category.toLowerCase().contains(_searchQuery);
      return matchesCategory && matchesQuery;
    }).toList();
  }
}
