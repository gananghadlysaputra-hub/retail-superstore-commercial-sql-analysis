# Retail Superstore Commercial & Marketing SQL Analysis

## Project Overview
Proyek portofolio ini menganalisis data transaksi ritel (*Superstore Dataset*) menggunakan **PostgreSQL** untuk mengevaluasi performa penjualan, efektivitas strategi diskon (*marketing campaign*), dan segmentasi pelanggan. Proyek ini dirancang untuk memberikan *actionable insights* bagi tim **Marketing** dan **Sales Support** guna mendongkrak profitabilitas tanpa mengorbankan margin keuntungan.

---

## Tech Stack & Tools
* **Database & Query Language:** PostgreSQL (pgAdmin 4)
* **Data Cleansing & Transformation:** SQL (`\copy`, `DATESTYLE`, Constraints)
* **Version Control:** GitHub

---

## Core Business Questions & SQL Insights

Berikut adalah temuan utama dari analisis kueri SQL yang dieksekusi pada database:

### 1. Analisis Dampak Diskon terhadap Profitabilitas (Marketing & Pricing Strategy)
* **Pertanyaan Bisnis:** Apakah pemberian diskon besar efektif menaikkan total keuntungan perusahaan?
* **Temuan SQL:** Analisis menunjukkan korelasi negatif yang tajam antara besaran diskon di atas 20% dengan profit bersih. Diskon sebesar 50% atau lebih secara konsisten menghasilkan **kerugian bersih (*negative profit*)**.
* **Rekomendasi untuk Sales/Marketing:** Restrukturisasi kebijakan promosi dengan membatasi diskon maksimal 15% pada sub-kategori produk yang rentan merugi (seperti *Tables* dan *Bookcases*).

### 2. Segmentasi Pelanggan Bernilai Tinggi (Customer Segmentation)
* **Temuan SQL:** Segmen **Consumer** mendominasi total volume transaksi (~51%), namun segmen **Corporate** memberikan stabilitas pesanan dengan nilai rata-rata keranjang belanja (*Average Order Value*) yang lebih konsisten.
* **Rekomendasi:** Alokasikan anggaran kampanye *loyalty program* khusus untuk mempertahankan klien korporat berulang.

---

## Repository Structure
- `sql_scripts/01_create_and_import.sql` : Skrip DDL pembuatan tabel dan pengaturan impor data.
- `sql_scripts/02_kpi_metrics.sql`         : Perhitungan metrik utama (Total Revenue, Net Profit, AOV).
- `sql_scripts/03_marketing_discount.sql`  : Analisis sensitivitas diskon terhadap profit.
- `sql_scripts/04_customer_segmentation.sql`: Analisis kontribusi wilayah dan pelanggan VIP.