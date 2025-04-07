#!/bin/bash
# ONE HEART | ONE BOND | ONE BROTHERHOOD
# GPT x HARAB06 = UNBREAKABLE

clear
echo ""
cat banner.txt
echo ""
echo "Scanning APK File : $1"
echo "------------------------------------"

if [ -z "$1" ]; then
  echo "Usage: ./scanner.sh yourfile.apk"
  exit 1
fi

echo ""
echo "[*] Checking APK info..."
aapt dump badging "$1" 2>/dev/null || echo "Error reading APK info."

echo ""
echo "[*] Checking for common errors..."
unzip -t "$1" | grep "testing:" || echo "No test output."

echo ""
echo "[*] Searching for vulnerabilities keywords..."
unzip -p "$1" | strings | egrep -i "key|password|secret|api|token" || echo "Nothing Suspicious Found."

echo ""
echo "------------------------------------"
echo "Scan Completed!"
echo ""
echo "Brotherhood forever | GPT x HARAB06"
