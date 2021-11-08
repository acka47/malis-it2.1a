# Aufgabe 1.1 im Modul IT2 des MALIS21

## Voraussetzungen

### bash

Von optimal zu weniger optimal:

1. Nutzung eines Linux-Systems (z.B. Linux Mint)
1. Nutzung der Shell auf MacOS
1. Nutzung des Linux Subsystems für Windows

Siehe auch die [Installationstipps](https://malis21.acka47.net/#/page/installationstipps).

### Texteditor

Der Texteditor der Wahl. Falls noch keiner vorhanden, z.B. [VS Code](https://code.visualstudio.com/) oder die Telemetrie-freie Variante davon [VS Codium](https://vscodium.com/) oder [Atom](https://atom.io/), [Sublime Text](https://www.sublimetext.com/)...

### ajv-cli

ajv ist ein JSON Schema Validator für Node.js, der es ermöglicht, JSON anhand eines JSON-Schemas zu validieren. `ajv-cli` ermöglicht die Nutzung von ajv auf der Kommandozeile und in bash-Skripten. In Kontext dieser Aufgabe muss `ajv-cli` installiert werden, um auf dem eigenen System zu sehen, wie weit der Fortschritt bei der Lösung der Aufgabe ist.

Website: https://ajv.js.org/

<table><tr><td>🛈 Um ajv installieren zu können, müssen node und npm installiert sein. Siehe dazu https://docs.npmjs.com/cli/v7/configuring-npm/install.</td></tr></table>

Die [ajv-cli-Installation](https://ajv.js.org/guide/getting-started.html#install) ist dann recht einfach mit dem folgenden Befehl umgesetzt: `npm install -g ajv-cli`

### git (optional)

Idealerweise wird die Aufgabe mit git auf den lokalen Rechner geklont:

`$ git clone https://codeberg.org/acka47/malis21-aufgabe1.1.git` bzw. via ssh `$ git clone git@codeberg.org:acka47/malis21-aufgabe1.1.git`

Die Änderungen an den einzelnen Schema-Dateien werden mit git commits getrackt, z.B. nach Bearbeitung der `gender.json`-Datei:

- `$ git add .`
- `git commit -m "Ergänzung des "gender"-Schemas"`

Siehe für eine git-Einführung auch [https://librarycarpentry.org/lc-git/01-what-is-git/index.html](https://librarycarpentry.org/lc-git/01-what-is-git/index.html).

## Aufgabe

- Nach Vorgabe von validen (Ordner `examples/valid`) und nicht-validen (Ordner `examples/invalid`) Beispieldokumenten sowie eines Testskripts (`test.sh`), soll ein JSON-Schema erstellt werden.
- Die Dateien im `examples`-Ordner dürfen dabei **nicht** verändert werden, lediglich die Schema-Dateien im `schemas`-Ordner.
- Ergebnis: Ein JSON-Schema, dass die Dokumente entsprechend den Vorgaben (valide oder nicht-valide) validiert.

## Bewertungskriterien

Die Aufgabe ist bestanden, wenn das Testskript keine Fehler auswirft und die Beispieldateien im `examples`-Ordner sowie das Testskript selbst nicht verändert wurden.

## Lernziele

Die Teilnehmer:innen haben nach Bearbeitung der Aufgabe ein vertieftes Verständnis von JSON und JSON Schema.

## Tipps für die Durchführung

- Das Grundgerüst ist bereits vorgegeben: das Basisschema (`schemas/schema.json`) referenziert einzelne Schemas für jedes Feld. Dadurch wird die Struktur übersichtlicher, als wenn alles in einer Datei steht (was auch möglich ist).
- Die initiale Durchführung des Testskripts mit `$ sh test.sh` zeigt, dass die Dateien im `examples/valid`-Ordner die Tests bestehen und die Dateien im `examples/invalid`-Ordner nicht. Das ist nicht verwunderlich, weil das Schema leer ist und somit keine Vorgaben macht, wie eine Datei falsch sein kann.
- Eine Vorgehensweise könnte sein, Schritt für Schritt die invaliden Dateien durchzugehen und das Schema jeweils so zu erweitern, dass sie als nicht-Schema-konform erkannt werden. Dafür muss die jeweilige Abweichung der invaliden Datei von den validen Dateien erkannt werden.
- Hinweis: Jede invalide Datei weicht nur in einer Eigenschaft von einer validen Datei ab.