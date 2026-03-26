# 🟠 Faz 05: Distributed Tracing & Logging

Metrikler "ne olduğunu" söyler, loglar ve trace'ler ise "neden olduğunu" açıklar.

## 1. Distributed Tracing (Dağıtık İzleme)

Bir kullanıcı isteğinin mikroservisler arasındaki yolculuğunu izleme sürecidir.
*   **Span:** Tek bir operasyonun (örn: veritabanı sorgusu) başlangıç ve bitiş zamanı.
*   **Trace:** Birden fazla span'in birleşimiyle oluşan tüm işlem yolu.
*   **OpenTelemetry:** İzleme, log ve metrik için ortak standart.

## 2. Merkezi Log Yönetimi (Loki)

Grafana Loki, logları dizinlemek yerine etiketleyen (Prometheus gibi) uygun maliyetli bir log toplama sistemidir.
*   **Promtail:** Logları toplayıp Loki'ye gönderen ajan.
*   **LogQL:** Loglar içerisinde sorgu yapma dili.

---
*Gelecek Adım: [Faz 06: AIOps ve Tahminleme](../Phase-06-AIOps-Automation/README.md)*
