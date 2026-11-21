#!/usr/bin/env python3
"""Offline repository checks: required paths, CSV structure, and local Markdown links."""
from __future__ import annotations
import csv
import re
import sys
from pathlib import Path
from urllib.parse import unquote

ROOT = Path(__file__).resolve().parents[1]
REQUIRED = [
    "README.md", "KIT.md", "PORTFOLIO/PROJECT_BRIEF.md",
    "PORTFOLIO/ENGINEERING_CLAIMS.md", "00_CONTEXT/PROJECT_SCOPE.md",
    "01_REQUIREMENTS/REQUIREMENTS_REGISTER.csv",
    "01_REQUIREMENTS/BASELINE_MEASUREMENTS.csv",
    "02_ARCHITECTURE/SYSTEM_ARCHITECTURE.md",
    "03_MECHANICAL/MECHANICAL_DESIGN_BASIS.md",
    "04_ELECTRICAL/ELECTRICAL_DESIGN_BASIS.md",
    "05_BATTERY/BATTERY_BMS_REQUIREMENTS.md",
    "06_SAFETY/HAZARD_REGISTER.csv",
    "07_PROCUREMENT/PROCUREMENT_STRATEGY.md",
    "07_PROCUREMENT/BOM_TEMPLATE.csv",
    "08_VERIFICATION/VERIFICATION_PLAN.md",
    "09_ECONOMICS/TCO_MODEL.md",
    "10_CONTROL_SOFTWARE/CONTROL_ARCHITECTURE.md",
    "11_LOCALIZATION/THAILAND_REGULATORY.md",
    "11_LOCALIZATION/THAILAND_PROCUREMENT.md",
    "12_CAREER/CASE_STUDY.md",
    "99_TEMPLATES/EVIDENCE_REGISTER.csv",
]
CSV_FILES = [p for p in ROOT.rglob("*.csv") if ".git" not in p.parts]
MD_FILES = [p for p in ROOT.rglob("*.md") if ".git" not in p.parts]

def main() -> int:
    errors: list[str] = []
    for rel in REQUIRED:
        if not (ROOT / rel).is_file():
            errors.append(f"Missing required file: {rel}")
    for path in CSV_FILES:
        try:
            with path.open(newline="", encoding="utf-8-sig") as handle:
                rows = list(csv.reader(handle))
            if not rows or not rows[0]:
                errors.append(f"Empty CSV or missing header: {path.relative_to(ROOT)}")
                continue
            width = len(rows[0])
            for number, row in enumerate(rows[1:], start=2):
                if len(row) != width:
                    errors.append(
                        f"CSV column mismatch: {path.relative_to(ROOT)}:{number} "
                        f"expected {width}, got {len(row)}"
                    )
        except (OSError, UnicodeError, csv.Error) as exc:
            errors.append(f"Cannot parse CSV {path.relative_to(ROOT)}: {exc}")
    link_pattern = re.compile(r"!?\[[^\]]*\]\(([^)]+)\)")
    for path in MD_FILES:
        content = path.read_text(encoding="utf-8")
        for target in link_pattern.findall(content):
            target = target.strip().split("#", 1)[0]
            if not target or re.match(r"^(https?://|mailto:|#)", target, re.I):
                continue
            local = (path.parent / unquote(target)).resolve()
            try:
                local.relative_to(ROOT)
            except ValueError:
                errors.append(f"Link escapes repository: {path.relative_to(ROOT)} -> {target}")
                continue
            if not local.exists():
                errors.append(f"Broken local link: {path.relative_to(ROOT)} -> {target}")
    if errors:
        print("\n".join(f"ERROR: {item}" for item in errors))
        return 1
    print(f"OK: {len(REQUIRED)} required paths, {len(CSV_FILES)} CSV files, "
          f"{len(MD_FILES)} Markdown files checked.")
    return 0

if __name__ == "__main__":
    sys.exit(main())
