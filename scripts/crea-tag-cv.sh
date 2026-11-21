#!/usr/bin/env bash
# Crea e pubblica i tag cv-AAAA-MM-GG per le versioni del CV (da eseguire sul tuo PC).
# Ogni tag punta al commit che ha introdotto quel PDF. Esegui nella cartella del repository.
set -euo pipefail
tag() { git rev-parse -q --verify "refs/tags/$1" >/dev/null && { echo "già presente: $1"; return; }; git tag -a "$1" "$2" -m "CV $1"; echo "creato: $1"; }
tag cv-2026-08-17 10e6de3
tag cv-2026-08-21 c844b3b
tag cv-2026-08-27 c133d0f
tag cv-2026-08-28 84ede25
tag cv-2026-09-11 fec9455
tag cv-2026-09-18 49fd8e4
tag cv-2026-09-21 88350e1
tag cv-2026-10-08 bf0ed48
tag cv-2026-10-25 07313c4
tag cv-2026-10-29 60a4e25
tag cv-2026-10-30 0d2cdfb
tag cv-2026-11-05 3352411
git push origin --tags
