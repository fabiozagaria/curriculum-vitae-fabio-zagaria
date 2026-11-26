# Contesto tecnico — Curriculum Vitae

Aggiornato il 26 novembre 2026

## Ruolo del repository
Punto di distribuzione pubblico del PDF del curriculum di Fabio Zagaria; non è la sorgente primaria del contenuto.

## Formato pubblico
- Due PDF A4 a una pagina, a colonna singola, con testo selezionabile e link cliccabili.
- Il layout è il template Career Ops mantenuto nel flusso ufficiale.
- File di distribuzione `Fabio_Zagaria_CV.pdf` (italiano) e `Fabio_Zagaria_CV_EN.pdf` (inglese).

## Sorgente autorevole
I contenuti risiedono nei payload `portfolio-angular/scripts/cv-career-ops.json` e `cv-career-ops.en.json` nel repository `fabio-zagaria-portfolio`. Il PDF viene prodotto con gli script ufficiali Career Ops usando il template nativo e l’estensione locale `portfolio-angular/scripts/cv-career-ops-template.html`, che aggiunge un QR cliccabile al portfolio. Seguire le istruzioni Career Ops del file `AGENTS.md` nel repository portfolio. Il vecchio generatore Python non è più il flusso autorevole.

## Flusso di aggiornamento
1. aggiornare il payload Career Ops nel repository portfolio;
2. generare HTML e PDF con il template CV risolto da Career Ops, formato A4 e vincolo di una pagina;
3. verificare struttura ATS, fatti, testo estratto, link e rendering visivo;
4. sostituire `portfolio-angular/src/assets/documents/CV.pdf` o `CV-en.pdf` e verificare le copie prodotte dalla build;
5. sincronizzare qui lo stesso PDF e confrontare checksum;
6. controllare coerenza con README, portfolio e profili professionali;
7. archiviare la versione (`scripts/archivia-cv.sh`), aggiornare il CHANGELOG e creare il tag `cv-AAAA-MM-GG`; nel portfolio eseguire `npm run cv:meta -- AAAA-MM-GG it` o `npm run cv:meta -- AAAA-MM-GG en` con la stessa data.

## Archivio e versioni
`archive/` contiene ogni versione del PDF (`CV_AAAA-MM-GG_<sha8>.pdf` e `CV_EN_AAAA-MM-GG_<sha8>.pdf`, immutabili; 12 versioni ricostruite dalla cronologia git il 21 novembre 2026). `CHANGELOG.md` le elenca. Tag `cv-AAAA-MM-GG` sul commit che introduce la versione (`scripts/crea-tag-cv.sh` per quelli storici: dall'ambiente cloud i tag non si possono pubblicare). La data di versione è quella dei contenuti, non del commit.

## Contenuto corrente
Expense Tracker e AccessDesk sono i progetti in evidenza. Il profilo include Redis per caching, Docker per containerizzazione e ambienti di sviluppo, test con JUnit, Mockito e test di integrazione Spring Boot, e sviluppo assistito da AI con Claude Code come strumento principale (plugin e skill anche sviluppati in proprio), MCP, ChatGPT e Codex. Il PDF corrente (21 novembre 2026, sha256 `8915cc58`) è allineato al payload: PostgreSQL con Flyway, Testcontainers, GitHub Actions. Progetti: Expense Tracker, JobFlow e AccessDesk in sviluppo, MedTransit in progettazione senza codice. Studio autonomo: prossimo approfondimento: C++. Il Master PC Academy è riportato come Nov 2019 - Mag 2020 (attestato di frequenza). Esperienza, formazione e livelli linguistici devono restare coerenti con il payload Career Ops.

L’edizione inglese del 26 novembre 2026 (SHA-256 breve `4a0446d5`) traduce il CV italiano del 21 novembre. Il file archiviato coincide con il PDF inglese del portfolio.
