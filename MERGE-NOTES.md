# Zusammenführung vom 1. November 2026

`unit-tests.tex` verbindet die Inhalte beider Entwürfe in einer gemeinsamen
Ausarbeitung. Die unveränderten Originale liegen unter
`backups/pre-merge-2026-11-01/`: der bisherige Haupttext und seine Bibliografie
direkt dort, Davids Dateien im Unterordner `david/`. `SHA256.json` enthält die
Prüfsummen der Originaldateien. Die Sicherung enthält auch die vorherige README.

## Redaktionelle Änderungen

- Die Abschnitte zu Fehlermeldungen, Tests einzelner Compilerphasen und
  Differential Testing stammen aus dem bisherigen Haupttext. Source Locations,
  Golden Tests und die ESP32-C3-Ausführungstests stammen aus Davids Entwurf.
- Das gemeinsame RISC-V-Beispiel steht mit beiden Zielarchitekturen im
  Codegenerator-Abschnitt; der FileCheck-Abschnitt verweist darauf. Die getrennte
  IR-Darstellung im Ausführungstest bleibt zur Erklärung des Testgegenstands erhalten.
- Schreibweise, Satzbau, Überschriften, Codeformatierung und Literaturangaben
  wurden vereinheitlicht. Fehlerhafte Zitationsschlüssel und die zusätzliche
  unbenutzte Tabellenspalte wurden korrigiert. Die Zahlwerte bei `long` sind
  ausdrücklich als kleinste darstellbare Werte beschrieben.
- Die längere englische GCC-Passage wurde sinngemäß zusammengefasst. Es wurden
  keine neuen fachlichen Abschnitte oder Beispiele ergänzt.
- Leere Gliederungspunkte wurden weggelassen: Einordnung, Fehlererholung,
  Verifikation, Implementierungsübersicht und Fazit. Aussagen im Abstract, die
  diese fehlenden Inhalte ankündigten, wurden angepasst. Die Merge-Platzhalter
  wurden nach der Zusammenführung entfernt.
- Das angekündigte lokale Quellenpaket einschließlich Abrufprotokoll war nicht
  vorhanden. Der Anhang enthält deshalb Onlinefundstellen; Behauptungen über
  mitgelieferte Lesekopien wurden entfernt. Die ergänzenden Fundstellen bleiben
  erhalten, auch wenn sie nicht als Codebeispiel im Haupttext erscheinen.
- Der IBM-Link lieferte HTTP 403. Für die grundlegenden Lexer-/Parser-Aussagen
  wird stattdessen die bereits vorhandene Clang-Dokumentation zitiert.
  Doppelte Bibliografieeinträge für dieselben verwendeten Quellen wurden
  zusammengeführt; unbenutzte Alternativnachweise entfallen.

## Prüfung

Die Ausarbeitung wurde mit pdfLaTeX, Biber und latexmk gebaut und als PDF
visuell geprüft. Die verwendeten Bibliografie-URLs waren beim Abruf am
1. November 2026 erreichbar. Die zentralen Codebeispiele wurden mit ihren
Onlinequellen abgeglichen; die Originaldateien wurden anhand ihrer Prüfsummen
kontrolliert. Die Compiler- und Hardwaretests selbst wurden nicht ausgeführt.
