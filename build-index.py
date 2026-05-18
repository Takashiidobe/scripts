#!/usr/bin/env python3
import os
import re

def yaml_str(s):
    return '"' + s.replace('\\', '\\\\').replace('"', '\\"') + '"'

entries = []
for fname in sorted(os.listdir("src")):
    if not fname.endswith(".md"):
        continue
    name = fname[:-3]
    with open(os.path.join("src", fname)) as f:
        content = f.read()
    m = re.match(r"^---\n(.*?)\n---", content, re.DOTALL)
    if not m:
        continue
    fm = {}
    for line in m.group(1).splitlines():
        if ":" in line:
            k, v = line.split(":", 1)
            fm[k.strip()] = v.strip().strip('"')
    entries.append({
        "name": name,
        "title": fm.get("title", name),
        "description": fm.get("description", ""),
    })

print("---")
print("title: Scripts")
print("scripts:")
for e in entries:
    print(f'- name: {yaml_str(e["name"])}')
    print(f'  title: {yaml_str(e["title"])}')
    print(f'  description: {yaml_str(e["description"])}')
print("---")
