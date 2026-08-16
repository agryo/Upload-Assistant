"""Locations for files created by Upload Assistant at runtime.

The source checkout is intentionally treated as read-only. ``UA_DATA_DIR`` is
the supported override for containers, portable installs, and test runs.
"""

import os
from pathlib import Path

CODE_DIR = Path(__file__).resolve().parent.parent


def _default_data_dir() -> Path:
    override = os.environ.get("UA_DATA_DIR", "").strip()
    if override:
        return Path(override).expanduser()
    # Default to project directory for backwards compatibility
    return CODE_DIR


STATE_DIR = _default_data_dir()
DATA_DIR = STATE_DIR / "data"
TMP_DIR = STATE_DIR / "tmp"
CONFIG_PATH = DATA_DIR / "config.py"
LEGACY_CONFIG_PATH = CODE_DIR / "data" / "config.py"


def ensure_data_dir() -> Path:
    """Create and return the runtime directory."""
    STATE_DIR.mkdir(parents=True, exist_ok=True)
    DATA_DIR.mkdir(parents=True, exist_ok=True)
    TMP_DIR.mkdir(parents=True, exist_ok=True)
    return STATE_DIR
