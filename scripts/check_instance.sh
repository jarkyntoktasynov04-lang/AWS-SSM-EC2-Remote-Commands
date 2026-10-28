
#!/bin/bash

echo "===== EC2 INSTANCE DIAGNOSTICS ====="

echo ""
echo "1. Hostname:"
hostname

echo ""
echo "2. Current date and time:"
date

echo ""
echo "3. Operating system:"
cat /etc/os-release | head -n 6

echo ""
echo "4. Disk usage:"
df -h /

echo ""
echo "5. Memory information:"
free -h

echo ""
echo "===== DIAGNOSTICS COMPLETED ====="
