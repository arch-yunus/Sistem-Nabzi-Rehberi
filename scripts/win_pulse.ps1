# WinPulse - Windows Performance Monitor
# Bahattin Yunus Çetin (IT Architect)

function Show-Pulse {
    while($true) {
        Clear-Host
        $date = Get-Date -Format "HH:mm:ss"
        Write-Host "==========================================" -ForegroundColor Cyan
        Write-Host " WINDOWS SYSTEM PULSE - $date " -ForegroundColor White -BackgroundColor Blue
        Write-Host "==========================================" -ForegroundColor Cyan

        # CPU Usage
        $cpu = Get-Counter "\Processor(_Total)\% Processor Time" -ErrorAction SilentlyContinue
        $cpuVal = [math]::Round($cpu.CounterSamples.CookedValue, 2)
        Write-Host "CPU Usage: $cpuVal %"

        # Memory RAM
        $mem = Get-CimInstance Win32_OperatingSystem
        $totalMem = [math]::Round($mem.TotalVisibleMemorySize / 1MB, 2)
        $freeMem = [math]::Round($mem.FreePhysicalMemory / 1MB, 2)
        $usedMem = [math]::Round($totalMem - $freeMem, 2)
        $memPercent = [math]::Round(($usedMem / $totalMem) * 100, 2)
        Write-Host "Memory: $usedMem GB / $totalMem GB ($memPercent %)"

        # Disk Usage
        Write-Host "`n--- Disk Info ---"
        Get-PSDrive -PSProvider FileSystem | Select-Object Name, @{Name="Used(GB)";Expression={[math]::Round(($_.Used / 1GB),2)}}, @{Name="Free(GB)";Expression={[math]::Round(($_.Free / 1GB),2)}} | Format-Table -AutoSize

        Write-Host "`nPress Ctrl+C to stop."
        Start-Sleep -Seconds 3
    }
}

Show-Pulse
