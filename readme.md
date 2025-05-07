# Dokumentation Verifleet

Die Dokumentation wird verteilt erstellt. Die Datei mkdocs.yml enthält Davala lediglich die Basis Definitionen, von denen diverse Parameter durch den github Workflow (.github/workflows/documentation.yml)überschrieben werden. Änderungen sollten daher mit Vorsicht vorgenommen werden.

## Erweiterung für neue Partner

Die Dokumentation wird erweitert, in dem im Workflow eine weitere 
Target-Variable definiert wird.

> **Hinweis:** 
> Alle Anpassungen werden in ```documentation.yml``` vorgenommen!!!

```
      matrix:
        target: [verifleet, fleethub, bamaka]
``` 

Durch Erweiterung dieser Liste wird durch den Workflow ein weiteres Unterverzeichnis in der branch gh-pages erzeugt. Dieses Verzeichnis stellt die Dokumentation für einen weiteren Partner da.

Zusätzlich muss ein neuer Eintrag in den Switch für Logo und Farbe eingefügt werden. Dieser befindet sich ebenfalls in der Workflow Datei.

```
          # Setze Farbe & Logo je nach Target
          case "$TARGET" in
            "verifleet")
              COLOR="#ff0000"
              LOGO="verifleet-logo.svg"
              ;;
            "fleethub")
              COLOR="#189EDA"
              LOGO="fleethub-logo.svg"
              ;;
            "bamaka")
              COLOR="#0A74DA"
              LOGO="bamaka-logo.svg"
              ;;
            *)
              echo "Unbekanntes Ziel: $TARGET"
              exit 1
              ;;
          esac
```

Die einzelnen Seiten sind unter https://verifleet.github.io/vf-documentation/$TARGET/.