#!/usr/bin/env bash
# Archivia la versione corrente del CV in archive/ (file datati e immutabili) e propone il tag.
#
#   scripts/archivia-cv.sh AAAA-MM-GG "descrizione breve della modifica"
#
# AAAA-MM-GG = data in cui sono cambiati i CONTENUTI del CV (la stessa passata a
# `npm run cv:meta` nel portfolio). Dopo l'esecuzione: aggiungere la voce al CHANGELOG.md,
# fare commit e creare il tag indicato.
set -euo pipefail

data="${1:-}"; nota="${2:-}"
[[ "$data" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]] || { echo "Uso: $0 AAAA-MM-GG \"descrizione\"" >&2; exit 1; }
[ -n "$nota" ] || { echo "Serve una descrizione breve della modifica." >&2; exit 1; }

cd "$(dirname "$0")/.."
sha=$(sha256sum Fabio_Zagaria_CV.pdf | cut -d' ' -f1)
dest="archive/CV_${data}_${sha:0:8}.pdf"

if ls archive/*_"${sha:0:8}".pdf >/dev/null 2>&1; then
  echo "Questa versione è già in archivio: $(ls archive/*_"${sha:0:8}".pdf). Niente da fare."
  exit 0
fi
cp Fabio_Zagaria_CV.pdf "$dest"
chmod a-w "$dest"
echo "Archiviato: $dest (sha256 $sha)"
echo "Ora: aggiungi in CHANGELOG.md la voce «$data — $nota» con sha256 ${sha:0:8}, poi commit e tag cv-$data"
