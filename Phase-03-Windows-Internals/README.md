# 🟡 Faz 03: Windows Internals & Performance

Windows ekosisteminde performans izleme, Microsoft'un sunduğu güçlü mimariler üzerine inşa edilmiştir.

## 1. Performance Counters (PerfMon)

Windows meta-verilerini "Performance Counters" adı verilen bir yapıyla sunar.
*   **Object (Nesne):** Processor, Memory, LogicalDisk.
*   **Counter (Sayaç):** % Processor Time, Available MBytes.
*   **Instance (Örnek):** 0, 1, _Total.

## 2. ETW (Event Tracing for Windows)

ETW, uygulama ve kernel olaylarını izlemek için kullanılan yüksek performanslı bir mekanizmadır.
*   **Provider:** Olayı üreten (örn: Microsoft-Windows-Kernel-Network).
*   **Consumer:** Olayı okuyan ve anlamlandıran.
*   **Araçlar:** PerfView, Windows Performance Recorder (WPR), Message Analyzer.

## 3. PowerShell ile Metrik Toplama

PowerShell, sistem metriklerine erişmek için en güçlü araçtır:
```powershell
# Anlık CPU kullanımı
Get-Counter -Counter "\Processor(_Total)\% Processor Time"

# Bellek durumu
Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory
```

---
*Gelecek Adım: [Faz 04: Modern Gözlemlenebilirlik Altyapısı](../Phase-04-Modern-Observability/README.md)*
