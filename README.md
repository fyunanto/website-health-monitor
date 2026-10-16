# Enterprise Website Health & Performance Monitor

## Executive Summary
Repository ini berisi skrip otomatisasi berbasis **PowerShell** yang dirancang untuk memantau ketersediaan (*uptime*), status respon HTTP, dan waktu latensi dari domain operasional `https://www.solagency.id`. 

Proyek ini dibangun untuk mendukung operasional IT hulu ke hilir dalam menjaga *Service Level Agreement* (SLA) dan mendeteksi potensi insiden secara dini.

---

## Key Features & Capabilities
* **Status Code Validation:** Mengidentifikasi secara instan jika terjadi gangguan pada server (misal: HTTP 500/404 atau koneksi terputus).
* **Latency Benchmarking:** Mengukur waktu respon server dalam satuan milidetik (ms) untuk memastikan kecepatan akses layanan.
* **Lightweight & Native:** Dijalankan secara langsung di ekosistem Windows Server / Workstation tanpa memerlukan instalasi *third-party dependencies*.

---

## Technical Stack & Execution
* **Language:** PowerShell 5.1 / 7.x
* **Target Domain:** `https://www.solagency.id`

### Sample Execution Output
--- Memulai Pemeriksaan Kesehatan Website ---
Target: https://www.solagency.id
[SUCCESS] Website UP (Status: 200)
[LATENCY] Waktu Respon: 3031 ms
--- Pemeriksaan Selesai ---

### Cara Menjalankan Skrip (Quick Start)
1. Buka Windows PowerShell di direktori skrip.
2. Jalankan perintah:
   powershell
   PowerShell -ExecutionPolicy Bypass -File .\monitor-website.ps1
