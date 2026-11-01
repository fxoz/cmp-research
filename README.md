# Compilerdiagnostik, Testing und Verifikation

Die gemeinsame Ausarbeitung von Felix Orosz und David Stargala steht in
`unit-tests.tex`; alle Literaturangaben stehen in `literatur.bib`.
`unit-tests.pdf` enthält den geprüften Export des zusammengeführten Stands.

Die unveränderten Entwürfe und die vorherige README liegen unter
`backups/pre-merge-2026-11-01/`. Hinweise zur Zusammenführung stehen in
[MERGE-NOTES.md](MERGE-NOTES.md).

## VS Code PDF preview

Requires LaTeX Workshop, MiKTeX (or TeX Live), `latexmk`, Biber, and Perl.
On this Windows machine, Perl is installed through Scoop (`scoop install perl`).
After installing tools, restart VS Code completely so it picks up the updated PATH.
On Windows, the build wrapper also refreshes PATH from the saved system and user
environment, so a launcher with an older PATH does not hide MiKTeX or Perl.
The ChkTeX and kpsewhich paths in `.vscode/settings.json` refer to this machine's
MiKTeX installation; adjust them when opening the project on another machine.

With VS Code 1.103.2, use LaTeX Workshop 10.13.1. Version 10.14 introduced a
PDF viewer regression on older VS Code versions: the preview can remain blank
with a blue loading bar even after a successful build. See
[LaTeX Workshop issue #4851](https://github.com/James-Yu/LaTeX-Workshop/issues/4851).
After changing the extension version, run **Developer: Reload Window** and reopen
the PDF preview from the `.tex` file.

1. Open this folder in VS Code and open `unit-tests.tex`.
2. Press **Ctrl+Alt+B** to build, then **Ctrl+Alt+V** to open the PDF beside the source.
3. Save a `.tex` or `.bib` file with **Ctrl+S** to rebuild and refresh the open preview.

Builds run on explicit save; automatic saving is disabled for LaTeX and BibTeX in
this workspace. `latexmk` runs only the LaTeX passes and Biber updates needed for
the change. Its cache stays in `.latex-build/` to keep subsequent saves fast.
The root-level `unit-tests.pdf` is the reviewed merged export; the live preview
uses `.latex-build/unit-tests.pdf`. Later edits update the live preview, so rebuild
and copy that PDF to the root when refreshing the reviewed export.
Open the preview from the `.tex` file.

**Ctrl+Alt+J** jumps from source to PDF; **Ctrl+click** in the PDF jumps back.
If compilation fails, the last successful preview remains visible; check the
LaTeX Workshop output or Problems panel, fix the error, and save again.
