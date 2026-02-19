import sys
import csv

reader = csv.reader(sys.stdin)

header_skipped = False

for row in reader:
    if not header_skipped:
        header_skipped = True
        continue

    day = row[4]   # "day" column
    print(f"{day}\t1")
