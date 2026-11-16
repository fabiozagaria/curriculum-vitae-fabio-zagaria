# Contesto tecnico — Curriculum Vitae

Aggiornato: 2026-11-16

## Ruolo del repository
Punto di distribuzione pubblico del PDF del curriculum di Fabio Zagaria; non è la sorgente primaria del contenuto.

## Formato pubblico
- Un unico PDF A4 a una pagina, a colonna singola, con testo selezionabile e link cliccabili.
- Il layout è il template Career Ops mantenuto nel flusso ufficiale.
- Il file pubblico è `Fabio_Zagaria_CV.pdf`.

## Sorgente autorevole
I contenuti risiedono in `portfolio-angular/scripts/cv-career-ops.json` nel repository `fabio-zagaria-portfolio`. Il PDF viene prodotto con gli script ufficiali Career Ops usando il template nativo e l’estensione locale `portfolio-angular/scripts/cv-career-ops-template.html`, che aggiunge un QR cliccabile al portfolio. Seguire le istruzioni Career Ops del file `AGENTS.md` nel repository portfolio. Il vecchio generatore Python non è più il flusso autorevole.

## Flusso di aggiornamento
1. aggiornare il payload Career Ops nel repository portfolio;
2. generare HTML e PDF con il template CV risolto da Career Ops, formato A4 e vincolo di una pagina;
3. verificare struttura ATS, fatti, testo estratto, link e rendering visivo;
4. sostituire `portfolio-angular/src/assets/documents/CV.pdf` e verificare le copie prodotte dalla build;
5. sincronizzare qui lo stesso PDF e confrontare checksum;
6. controllare coerenza con README, portfolio e profili professionali.

## Contenuto corrente
Expense Tracker e AccessDesk sono i progetti in evidenza. Il profilo include Redis per caching, Docker per containerizzazione e ambienti di sviluppo, test con JUnit, Mockito e test di integrazione Spring Boot, e sviluppo assistito da AI con Claude Code come strumento principale (plugin e skill anche sviluppati in proprio), MCP, ChatGPT e Codex. PostgreSQL resta studio autonomo applicato in AccessDesk; prossimo approfondimento: C++. Il Master PC Academy è riportato come Nov 2019 - Mag 2020 (attestato di frequenza). Esperienza, formazione e livelli linguistici devono restare coerenti con il payload Career Ops.
