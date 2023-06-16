#!/bin/bash

path=""
reporter_path=""

echo "[*] Data search in progress."
nrich $path/ip.txt -o json > $path/output/nrich_result_$(date +%F).txt

echo "[*] Parsing the result."
python3 $path/nrich_parser.py >> $path/cve/nrich_result_$(date +%F).txt
sleep 5

echo "[*] Search CVE."
echo "-----------------Nrich uniq CVE diff-------------------------------" > $path/diff/diff_nrich_uniq_cve_$(date +%F).txt
echo " " >> $path/diff/diff_nrich_uniq_cve_$(date +%F).txt
nrich ip.txt | grep "Vulnerabilities" | sort -u > $path/cve/nrich_uniq_cve_$(date +%F).txt
sleep 3
diff $path/cve/nrich_uniq_cve_$(date -d "1 day ago" +%F).txt $path/cve/nrich_uniq_cve_$(date +%F).txt >> $path/diff/diff_nrich_uniq_cve_$(date +%F).txt
sleep 3

cp $path/cve/nrich_result_$(date +%F).txt $reporter_path/reports/
cp  $path/diff/diff_nrich_uniq_cve_$(date +%F).txt $reporter_path/reports/
sleep 2

echo "[*] Sending a report."
python3 $reporter_path/reporter.py

echo "[*] Deleting a report."
sleep 2
rm $reporter_path/reports/nrich_result_$(date +%F).txt
rm $reporter_path/reports/diff_nrich_uniq_cve_$(date +%F).txt
sleep 2

echo "[*] Done."


