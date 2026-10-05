import re
from collections import Counter

def parse_tj(path):
    events = Counter()
    slow = []
    with open(path, encoding='utf-8') as f:
        for line in f:
            m = re.search(r'event="(\w+)"', line)
            if m: events[m.group(1)] += 1
            if 'SDBL' in line:
                dur = re.search(r'duration=(\d+)', line)
                if dur and int(dur.group(1)) > 1000000:
                    slow.append(line)
    return events, slow
