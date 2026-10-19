# Retail Superstore Commercial & Marketing SQL Analysis

## Project Overview
Proyek portofolio ini dirancang untuk menunjukkan kemampuan teknis **PostgreSQL** dan pemahaman bisnis (*commercial awareness*) dalam menganalisis data ritel (*Superstore Dataset*). Fokus utama proyek ini adalah mengekstrak *actionable insights* bagi tim **Marketing** dan **Sales Support** untuk mengoptimalkan strategi penjualan, mengendalikan kebijakan diskon, serta memaksimalkan profitabilitas perusahaan.

---

## Tech Stack & Tools
* **Database & Query Language:** PostgreSQL (pgAdmin 4)
* **Data Cleansing & Transformation:** SQL (`\copy`, `DATESTYLE`, Constraints)
* **Version Control:** GitHub

---

## Core Business Questions & SQL Insights

Berikut adalah 3 analisis utama yang dikupas tuntas menggunakan kueri SQL lanjutan untuk menjawab isu di operasional dan pemasaran:

### 1. Analisis Performa Kategori & Produk (Product & Category Analysis)
* **Pertanyaan Bisnis:** Kategori dan sub-kategori produk apa yang paling diandalkan oleh perusahaan, dan mana produk yang berkinerja buruk?
* **Temuan SQL:** 
  * Kategori **Technology** dan **Furniture** mencatatkan *total sales* tertinggi, namun sub-kategori tertentu di dalam *Furniture* (seperti *Tables* dan *Bookcases*) memiliki margin profit yang sangat tipis bahkan negatif.
* **Rekomendasi Strategis:** Tim *Sales Support* harus memprioritaskan stok dan promosi pada produk ber-margin tinggi (seperti *Copiers* dan *Phones* di kategori Technology), serta merestrukturisasi harga pokok atau menghentikan lini produk yang selalu merugi.

### 2. Analisis Marketing: Dampak Diskon terhadap Profitabilitas (Discount Strategy)
* **Pertanyaan Bisnis:** Apakah pemberian diskon besar secara agresif efektif mendongkrak keuntungan perusahaan?
* **Temuan SQL:** Analisis sensitivitas diskon membuktikan adanya **korelasi negatif yang tajam** antara besaran potongan harga dengan profit bersih. Diskon di atas **20%** mulai menggerus margin secara signifikan, dan diskon sebesar **50% hingga 70%** secara konsisten menghasilkan **kerugian bersih (*negative profit*)**.
* **Rekomendasi Strategis:** Tim *Marketing* harus menetapkan batas maksimal diskon (*discount cap*) di angka 15% untuk kampanye promosi massal guna melindungi *bottom-line profit* perusahaan dari kebocoran finansial akibat diskon berlebihan.

### 3. Analisis Pelanggan Bernilai Tinggi (Top Customers / Monetary Value & Anomaly)
* **Pertanyaan Bisnis:** Siapa saja pelanggan VIP (*Monetary Value* tertinggi) dan apakah pelanggan dengan belanja terbesar selalu mendatangkan keuntungan terbesar?
* **Temuan SQL (Kasus Anomali Sean Miller):** 
  * Pelanggan atas nama **Sean Miller** tercatat sebagai pembeli dengan total belanja (*Total Spent*) tertinggi ($25,043), namun mencatatkan profit bersih minus (**-$1,980**). 
  * Setelah dibedah, kerugian ini terjadi karena Sean membeli produk elektronik korporat yang sangat mahal dengan diskon agresif sebesar 50%–70%.
* **Rekomendasi Strategis:** Evaluasi ulang program *B2B pricing*. Klien institusi atau korporat besar tidak boleh diberikan diskon tanpa syarat volume pembelian yang ketat agar tidak merugikan perusahaan.

---

## Repository Structure
- `sql_scripts/01_create_import.sql` : Skrip DDL pembuatan tabel dan pengaturan impor data.
- `sql_scripts/02_main_kpi.sql`         : Perhitungan metrik utama (Total Sales, Total Profit, Total Sold, Total Orders).
- `sql_scripts/03_product_and_category_analysis.sql`  : Analisis performa berdasarkan kategori dan produk.
- `sql_scripts/04_discount_analysis.sql`: Analisis dampak diskon terhadap profitabilitas.
- `sql_scripts/05_customers_analysis.sql`: Analisis pelanggan yang bernilai tinggi.
- `sql_scripts/06_area_performance_analysis.sql`: Analisis performa wilayah.
