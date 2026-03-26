# Faz 01: Temeller ve Metrik Okuryazarlığı

Sistem gözlemlenebilirliğinin ilk adımı, veriyi nasıl tanımlayacağımızı ve okuyacağımızı bilmektir. Bu bölümde temel metrik tiplerini ve izleme metodolojilerini öğreneceğiz.

## 1. Temel Metrik Tipleri

*   **Counter (Sayaç):** Sadece artan veya sıfırlanan değerlerdir. Örn: Toplam HTTP isteği sayısı.
*   **Gauge (Ölçer):** Artıp azalabilen anlık değerlerdir. Örn: Mevcut RAM kullanımı.
*   **Histogram:** Gözlemleri belirli aralıklara (buckets) böler. Örn: Yanıt süreleri (latency).
*   **Summary:** Histogramlara benzer ancak istemci tarafında kuantiller (quantiles) hesaplar.

## 2. İzleme Metodolojileri

### USE Metodu (Infrastructure)
Brendan Gregg tarafından geliştirilmiştir. Donanım kaynaklarını izlemek için kullanılır:
1.  **Utilization:** Kaynak ne kadar meşgul? (Yüzde olarak)
2.  **Saturation:** Kaynak ne kadar "doymuş"? (Bekleyen iş kuyruğu)
3.  **Errors:** Donanım veya yazılım hataları var mı?

### RED Metodu (Services)
Mikroservisler ve uygulamalar için uygundur:
1.  **Rate:** Birim zamandaki istek sayısı.
2.  **Errors:** Hatalı dönen isteklerin oranı.
3.  **Duration:** İsteklerin tamamlanma süresi.

---
*Gelecek Adım: [Faz 02: Linux Gözlemlenebilirlik](../Phase-02-Linux-Gozlem/README.md)*
