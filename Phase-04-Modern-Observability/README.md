# 🟣 Faz 04: Modern Gözlemlenebilirlik Altyapısı

Bulut yerli (Cloud-native) dünyada gözlemlenebilirlik, dağıtık sistemlerin karmaşıklığını yönetmek için standartlaştırılmış araçlar gerektirir.

## 1. Prometheus Mimarisi

Prometheus, metrikleri hedef sistemlerden HTTP üzerinden "çekerek" (pull) toplar.
*   **PromQL:** Metrikleri sorgulamak için kullanılan güçlü dil.
*   **Scrape Interval:** Verinin ne kadar sıklıkla çekileceği.
*   **Exporters:** Prometheus'un doğrudan konuşamadığı servisler için aracı ajanlar (Node Exporter, Blackbox Exporter, JMX Exporter).

## 2. Grafana: Veri Görselleştirme

Grafana, farklı veri kaynaklarını (Prometheus, Loki, Tempo, MySQL) tek bir panelde birleştirir.
*   **Dashboard Tasarımı:** Kritik metriklerin (Golden Signals) ön plana çıkarılması.
*   **Templating:** Değişkenler kullanarak aynı paneli farklı sunucular için kullanma.
*   **Alerting:** Grafana üzerinden görsel uyarılar oluşturma.

## 3. Container İzleme (cAdvisor)

Google tarafından geliştirilen cAdvisor, çalışan container'ların kaynak kullanımını (CPU, RAM, Network) izler ve Prometheus formatında sunar.

---
*Gelecek Adım: [Faz 05: Distributed Tracing & Logging](../Phase-05-Distributed-Tracing/README.md)*
