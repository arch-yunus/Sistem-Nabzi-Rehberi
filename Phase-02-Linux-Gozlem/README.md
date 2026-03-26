# 🔵 Faz 02: Linux Derin Dalış (Observability)

Linux sistemlerinde gözlemlenebilirlik, işletim sisteminin kalbine (kernel) dokunmakla başlar. Bu bölümde, Linux'un sunduğu düşük seviyeli arayüzleri ve modern izleme araçlarını inceleyeceğiz.

## 1. /proc ve /sys: Sanal Dosya Sistemleri

Linux, sistem ve süreç (process) bilgilerini `procfs` (/proc) ve cihaz/donanım bilgilerini `sysfs` (/sys) üzerinden sunar.
*   `/proc/meminfo`: Bellek kullanım detayı.
*   `/proc/cpuinfo`: İşlemci mimarisi ve bayrakları.
*   `/proc/[pid]/`: Belirli bir sürecin kaynak kullanımı, açık dosyaları ve ağ bağlantıları.

## 2. eBPF: Yeni Nesil Gözlemlenebilirlik

eBPF (Extended Berkeley Packet Filter), Linux çekirdeğini değiştirmeden veya modül eklemeden, çekirdek içerisinde güvenli programlar çalıştırmanıza olanak tanır.
*   **BCC (BPF Compiler Collection):** Python/Lua ile eBPF araçları yazmak için.
*   **bpftrace:** eBPF için yüksek seviyeli bir izleme dili.
*   **Örnek:** Disk I/O gecikmelerini çekirdek seviyesinde `biolatency` ile izlemek.

## 3. Geleneksel ve Modern Araçlar

| Metrik | Geleneksel Araç | Modern Alternatif |
| :--- | :--- | :--- |
| **İşlem (Process)** | `top`, `ps` | `htop`, `btop` |
| **Disk I/O** | `iostat` | `iotop`, `glances` |
| **Network** | `netstat` | `ss`, `nload` |
| **Genel Sistem** | `vmstat`, `sar` | `netdata`, `prometheus` |

---
*Gelecek Adım: [Faz 03: Windows Internals & Performance](../Phase-03-Windows-Internals/README.md)*
