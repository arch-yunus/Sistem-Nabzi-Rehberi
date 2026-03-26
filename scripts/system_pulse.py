import psutil
import time
import os
from datetime import datetime

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def get_size(bytes, suffix="B"):
    factor = 1024
    for unit in ["", "K", "M", "G", "T", "P"]:
        if bytes < factor:
            return f"{bytes:.2f}{unit}{suffix}"
        bytes /= factor

def show_pulse():
    while True:
        clear_screen()
        print("="*50)
        print(f" SYSTEM PULSE MONITOR - {datetime.now().strftime('%H:%M:%S')}")
        print("="*50)

        # CPU
        print(f"CPU Usage: {psutil.cpu_percent(interval=1)}%")
        
        # Memory
        svmem = psutil.virtual_memory()
        print(f"Memory: {get_size(svmem.used)} / {get_size(svmem.total)} ({svmem.percent}%)")

        # Disk
        print("-" * 20 + " Disk Information " + "-" * 20)
        partitions = psutil.disk_partitions()
        for partition in partitions:
            try:
                partition_usage = psutil.disk_usage(partition.mountpoint)
                print(f"Drive {partition.device}: {partition_usage.percent}% used")
            except PermissionError:
                continue

        # Network
        net_io = psutil.net_io_counters()
        print("-" * 20 + " Network " + "-" * 20)
        print(f"Total Sent: {get_size(net_io.bytes_sent)}")
        print(f"Total Received: {get_size(net_io.bytes_recv)}")

        print("\nPress Ctrl+C to exit.")
        time.sleep(2)

if __name__ == "__main__":
    try:
        show_pulse()
    except KeyboardInterrupt:
        print("\nMonitoring stopped.")
