#!/usr/bin/env bash
set -euo pipefail
echo "Validating Disaggregated Serving configs..."
python3 -c "import json; json.load(open('mooncake_transfer_config.json'))"
python3 -m py_compile pd_disaggregated_router.py
echo "✓ Validation clean."
