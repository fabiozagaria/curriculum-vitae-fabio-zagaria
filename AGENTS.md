# Istruzioni per assistenti AI

## Scopo
Questo repository distribuisce il Curriculum Vitae di Fabio Zagaria in PDF. La sorgente primaria e il processo di generazione risiedono nel repository portfolio.

## Regole operative
- Non modificare manualmente il PDF come fonte autorevole.
- La sorgente dei contenuti è `portfolio-angular/scripts/cv-career-ops.json` nel repository `fabio-zagaria-portfolio`.
- Generare il PDF esclusivamente con Career Ops, seguendo le istruzioni Career Ops in `AGENTS.md` del repository portfolio.
- Non usare il generatore Python legacy `portfolio-angular/scripts/generate_cv.py`.
- Dopo la verifica locale, sincronizzare qui lo stesso PDF generato e confrontare i checksum.
- **Regola fondamentale: ogni aggiornamento del CV va sempre registrato in questo repository.** Dopo aver copiato il PDF, eseguire `scripts/archivia-cv.sh AAAA-MM-GG "nota"` (data dei contenuti), aggiungere la voce al `CHANGELOG.md`, committare e creare il tag `cv-AAAA-MM-GG`. I file in `archive/` non si modificano né si cancellano.
- Mantenere README, PDF e portfolio coerenti, compresa la data «CV aggiornato il …» (`cv.data.ts` nel portfolio).
- Non inventare competenze, esperienze, date o risultati professionali.

## Fonti di verità
- Payload Career Ops e fonti verificate nel repository portfolio: contenuto autorevole.
- PDF in questo repository: copia di distribuzione.
- `docs/CONTEXT.md`: flusso locale di manutenzione.

## Privacy
Inserire soltanto dati personali destinati esplicitamente al CV pubblico; evitare informazioni private non necessarie.
