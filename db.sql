CREATE DATABASE artikel_db;

USE artikel_db;


CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);


CREATE TABLE kategori (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    image VARCHAR(255),
    description TEXT,
    ibu_kota varchar(200),
    bahasa varchar(200),
    situs_sejarah varchar(200),
    tokoh_sejarah varchar(200)
);

CREATE TABLE artikel (
    id_artikel INT AUTO_INCREMENT PRIMARY KEY,
    id_kategori INT,
    insertAt timestamp DEFAULT CURRENT_TIMESTAMP,
    updateAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    title VARCHAR(255) NOT NULL,
    image_url VARCHAR(255),
    body TEXT,
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori)
);

CREATE TABLE budaya (
    id_budaya INT AUTO_INCREMENT PRIMARY KEY,
    id_kategori INT,
    url VARCHAR(255),
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori)
);


INSERT INTO kategori (title, image, description, ibu_kota, bahasa, situs_sejarah, tokoh_sejarah) VALUES 
('Nanggroe Aceh Darussalam', 'https://upload.wikimedia.org/wikipedia/commons/b/b8/Meuseujid_Raya_Baiturrahman%2C_Aceh.jpg', 'Provinsi Aceh, terletak di ujung barat Pulau Sumatera, Indonesia, adalah tempat yang memikat dengan kekayaan alamnya yang menakjubkan, warisan budayanya yang kaya, dan sejarah yang kuat. Dikenal sebagai "Serambi Mekkah" karena peran pentingnya dalam sejarah Islam di Indonesia, Aceh memiliki keindahan pantai yang memukau, gunung yang menjulang tinggi, serta hutan-hutan yang masih alami', 'Banda Aceh', 'Bahasa Aceh', 'Masjid Raya Baiturrahman, Kerkhof Peucut', 'Sultan Iskandar Muda, Cut Nyak Dhien'),
('Sumatera Utara', 'https://bobobox.com/blog/wp-content//uploads/elementor/thumbs/Danau-Toba-Sumatera-Utara-1-1-q5nt7tz3pxxnxectplrko0cnl1b7c6l8lqmlbiemlg.jpg', 'Sumatera Utara, sebuah provinsi yang terletak di ujung utara Pulau Sumatera, Indonesia, menampilkan pesona alam yang memikat dan kekayaan budaya yang menawan. Dengan ibukota yang bersemayam di kota Medan, provinsi ini memperlihatkan beragam panorama, mulai dari dataran rendah yang subur hingga pegunungan yang menjulang tinggi.', 'Kota Medan', 'Bahasa Batak', 'Museum Negeri Provinsi Sumatera Utara, Istana Maimun', 'Raja Ismail (Tuanku Rao), Sisingamangaraja XII'),
('Sumatera Selatan', 'https://rfcahyoofficial.files.wordpress.com/2018/04/pulau-kemaro-plmbng.jpg?w=534&h=356', 'Provinsi Sumatera Selatan, terletak di bagian selatan Pulau Sumatera, Indonesia, adalah tempat yang mempesona dengan keindahan alamnya yang menakjubkan, keanekaragaman budayanya yang kaya, dan warisan sejarah yang berharga. Di antara perbukitan yang hijau dan sungai yang mengalir deras, provinsi ini menyajikan panorama yang memukau, seperti Danau Ranau yang mempesona dan Taman Nasional Bukit Barisan Selatan yang melindungi keanekaragaman hayati yang luar biasa.', 'Kota Palembang', 'Bahasa Palembang', 'Benteng Kuto Besak, Museum Sultan Mahmud Badaruddin II', 'Sultan Mahmud Badaruddin II, A.M Thalib'),
('Sumatera Barat', 'https://asset-a.grid.id/crop/0x0:0x0/360x240/photo/2022/10/25/taman-mini-indonesia_78361-3075-20221025095931.jpg', 'Provinsi Sumatera Barat terletak di bagian barat Pulau Sumatera, Indonesia. Dikenal dengan budaya Minangkabau yang kaya dan unik, Sumatera Barat menawarkan pesona alam yang memukau, warisan budaya yang unik, dan kuliner yang lezat.', 'Kota Padang', 'Bahasa Minangkabau', 'Istana Pagaruyung, Lubang Jepang Bukittinggi', 'Prof. Dr. Mohammad Hatta, Tuanku Imam Bonjol'),
('Bengkulu', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/10/2024/01/24/bengkulu-okeee-2928737172.jpg', 'Provinsi Bengkulu terletak di pantai barat Pulau Sumatera, Indonesia, dengan ibu kota Kota Bengkulu, yang dikenal karena keindahan alamnya seperti Pantai Panjang, warisan sejarah seperti Benteng Marlborough, serta budaya unik termasuk upacara adat Tabot, didukung oleh perekonomian berbasis pertanian, perkebunan, dan perikanan.', 'Kota Bengkulu', 'Bahasa Rejang', 'Benteng Marlborough, Monumen Thomas Parr', 'Ahmad Marzuki, Fatmawati');

-- Insert data artikel
INSERT INTO artikel (id_kategori, insertAt, title, image_url, body) VALUES 
(1, NOW(), 'Aceh: Pesona Alam dan Budaya', 'https://upload.wikimedia.org/wikipedia/commons/b/b8/Meuseujid_Raya_Baiturrahman%2C_Aceh.jpg', 'Aceh adalah salah satu provinsi yang kaya akan keindahan alam dan warisan budaya. Dengan pantai yang memukau dan gunung yang menjulang tinggi, Aceh menawarkan pengalaman wisata yang tak terlupakan.'),
(2, NOW(), 'Sumatera Utara: Surga Wisata Alam', 'https://bobobox.com/blog/wp-content//uploads/elementor/thumbs/Danau-Toba-Sumatera-Utara-1-1-q5nt7tz3pxxnxectplrko0cnl1b7c6l8lqmlbiemlg.jpg', 'Sumatera Utara memikat dengan keindahan alamnya yang mempesona. Dari Danau Toba yang luas hingga keindahan pegunungan, provinsi ini memiliki segalanya untuk wisatawan.'),
(3, NOW(), 'Pesona Sumatera Selatan', 'https://rfcahyoofficial.files.wordpress.com/2018/04/pulau-kemaro-plmbng.jpg?w=534&h=356', 'Sumatera Selatan adalah destinasi yang menyajikan panorama alam yang memukau. Dari Danau Ranau yang mempesona hingga Taman Nasional Bukit Barisan Selatan yang luar biasa, provinsi ini memiliki banyak hal untuk ditawarkan.'),
(4, NOW(), 'Wisata Budaya di Sumatera Barat', 'https://asset-a.grid.id/crop/0x0:0x0/360x240/photo/2022/10/25/taman-mini-indonesia_78361-3075-20221025095931.jpg', 'Sumatera Barat kaya akan budaya Minangkabau yang unik. Dengan beragam tradisi dan kuliner lezat, provinsi ini menawarkan pengalaman wisata budaya yang tak terlupakan.'),
(5, NOW(), 'Eksplorasi Budaya Bengkulu', 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/10/2024/01/24/bengkulu-okeee-2928737172.jpg', 'Bengkulu adalah destinasi yang kaya akan budaya unik dan sejarah yang menarik. Dari Pantai Panjang yang indah hingga Benteng Marlborough yang megah, provinsi ini memiliki banyak hal untuk ditawarkan kepada wisatawan.');

INSERT INTO budaya (id_kategori, url) VALUES 
(1, 'https://youtu.be/cbD_yqfYx9g?si=ofOvDj8-rYKmZgbA'),
(1, 'https://youtu.be/dUGBT2n0YLA?si=3uIAPUqtKcI8iHoi');