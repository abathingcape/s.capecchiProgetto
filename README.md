# Progetto codifica di testi (2024)
In questa repositoty è contenuto il progetto per l'esame di codifica di testi dell'Universtià di Pisa.<br/>
Il progetto è stato realizzato dallo studente Capecchi Samuele (mat. 623714) con il professor Angelo Mario Del Grosso<br/>
in seguito i comandi per:

## Validazione XML con Xerces
```
java -cp "Xerces-J-bin.2.12.1/xerces-2_12_1/xml-apis.jar;Xerces-J-bin.2.12.1/xerces-2_12_1/xercesImpl.jar;Xerces-J-bin.2.12.1/xerces-2_12_1/xercesSamples.jar" dom.Counter -v progetto.xml
```

## Conversione in XSLT con Saxon
```
java -jar ./SaxonHE10-3J/saxon-he-10.3.jar -s:progetto.xml -xsl:progetto.xsl -o:progetto.html
```
