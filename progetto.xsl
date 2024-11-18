<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/">
        <html>
            <head>
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <link rel="stylesheet" type="text/css" href="style.css" />
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <script type="text/javascript" src="script.js"></script>
            <title>Progetto di Codifica di Testi</title>
          </head>
          <body>
              <div class="header">
                    <a href="https://rassegnasettimanale.animi.it/">
                        <img  src="foto/logo_rassegna.jpg" alt="logo_rassegna"/>
                    </a>    
                    <h2>
                       <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                       <h3>
                        <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt"/>
                       </h3>
                    </h2>
                    <div class="desc">
                        <div class="desc_prog">
                            <h2>Descrizione della fonte:</h2>
                            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc"/>
                            <h2>Dettagli sul progetto</h2>
                            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:encodingDesc/tei:projectDesc"/>
                        </div>
                    </div>
                    <div class="buttons">
                        <h2>Fenonmeni Notevoli:</h2>
                        <button id="persone_r" class="yellow">Persone</button>
                        <button id="persone_i" class="gray">Personaggi</button>
                        <button id="Opere" class="DarkOliveGreen" >Opere</button>
                        <button id="Luoghi" class="DeepPink">Luoghi</button>
                        <button id="Luoghi_n" class="purple">Luoghi naturali</button>
                        <button id="Casa_ed_ri" class="DarkOrange">Casa editrice / rivista</button>
                        <button id="Date" class="LawnGreen">Date</button>
                        <button id="Verbum" class="red">Verbum</button>
                        <button id="temi_motivi" class="DarkGreen">Temi e/o motivi</button>
                        <button id="correnti_l" class="cyan">Correnti letterarie</button>
                        <button id="testo_lingua" class="DarkSlateBlue">Testo in lingua straniera</button>
                        <button id="citazioni" class="DarkSalmon">Citazioni</button>
                        <button id="org" class="Maroon">Organizzazioni</button>
                        <button id="epithet" class="DarkCyan">Epithet</button>
                        <button id="abbr">Abbreviazioni</button>
                    </div>
                </div>
                <div class="pagine">
                    <div id="text_img_settimana" class="box_all">
                        <div id="testo_settimana" class="testo">
                            <h3>Articolo "La settimana":</h3>
                            <xsl:apply-templates select="//tei:div[@xml:id='primo_articolo']"/>     <!--// a qualsiasi punto del documento-->
                        </div>
                        <div id="immagine_settimana" class="doc">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pg39']"/>
                        </div>
                    </div>
                    <div id="text_img_parlamento" class="box_all">
                        <div id="testo_parlamento" class="testo">
                            <h3>Articolo "Il parlamento":</h3>
                            <xsl:apply-templates select="//tei:div[@xml:id='secondo_articolo']" />     <!--// a qualsiasi punto del documento-->
                        </div>
                        <div id="immagine_parlamento" class="doc">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pg40']"/>
                        </div>
                    </div>
                    <div id="text_img_notizie1" class="box_all">
                        <div id="testo_notizie1" class="testo">
                            <h3>Articolo "Notizie 1":</h3>
                            <xsl:apply-templates select="//tei:div[@xml:id='prime_notizie']" />     <!--// a qualsiasi punto del documento-->
                        </div>
                        <div id="immagine_notizie1" class="doc">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pg48']"/>
                        </div>
                    </div>
                    <div id="text_img_notizie2" class="box_all">
                        <div id="testo_notizie2" class="testo">
                            <h3>Articolo "Notizie 2":</h3>
                            <xsl:apply-templates select="//tei:div[@xml:id='seconde_notizie']" />     <!--// a qualsiasi punto del documento-->
                        </div>
                        <div id="immagine_notizie2" class="doc">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pg64']"/>
                        </div>
                    </div>
                    <div id="text_img_bibl_lett" class="box_all">
                        <div id="testo_bibl_lett" class="testo"> 
                            <h3>Articolo "Bibliografia: Letteratura e storia":</h3>
                            <xsl:apply-templates select="//tei:div[@xml:id='bibl_lett']" />     <!--// a qualsiasi punto del documento-->
                        </div>
                        <div id="immagine_bibl_lett" class="doc">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pg422']"/>
                        </div>
                    </div>
                    <div id="text_img_bibl_scienze" class="box_all">
                        <div id="testo_bibl_scienze" class="testo">
                            <h3>Articolo "Bibliografia: Scienze Naturali":</h3>
                            <xsl:apply-templates select="//tei:div[@xml:id='bibl_scienze']" />     <!--// a qualsiasi punto del documento-->
                        </div>
                        <div id="immagine_bibl_scienze" class="doc">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pg423']"/>
                        </div>
                    </div>
                </div>
                <footer>
                    <img  src="foto/logo_unipi.jpg" alt="logo_rassegna"/>
                    <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt"/>
                </footer>
          </body>
        </html>
    </xsl:template>
    <xsl:template match="tei:sourceDesc">
        <p><b>Titolo:</b> <br /><xsl:value-of select="tei:biblStruct/tei:monogr/tei:title"/></p>
        <xsl:apply-templates select="tei:biblStruct/tei:monogr/tei:imprint"/>
        <p>
            <b>Articoli selezionati:</b> <br />
            <xsl:for-each select="tei:biblStruct/tei:analytic">
                <xsl:value-of select="tei:title"/><br />
            </xsl:for-each>
            dai paragrafi <xsl:value-of select="tei:biblStruct/tei:monogr/tei:biblScope[2]"/>
            del volume <xsl:value-of select="tei:biblStruct/tei:monogr/tei:biblScope[1]"/>
            (pagine: <xsl:value-of select="tei:biblStruct/tei:monogr/tei:biblScope[3]"/>)
        </p>
    </xsl:template>
    <xsl:template match="tei:editionStmt">
        <xsl:value-of select="tei:edition"/>
        <br /> 
        <xsl:value-of select="tei:respStmt[1]"/>
        <br /> 
        <xsl:value-of select="tei:respStmt[2]"/>
    </xsl:template>
    <xsl:template match="tei:imprint">
        <p><b>Editore :</b> <br /><xsl:value-of select="tei:publisher"/></p>
        <p><b>Luogo di pubblicazione :</b> <br /><xsl:value-of select="tei:pubPlace"/></p>
        <p><b>Data :</b> <br /><xsl:value-of select="tei:date"/></p>
    </xsl:template>
    <xsl:template match="tei:div">
        <h3><xsl:value-of select="tei:head"/></h3>
        <xsl:for-each select="tei:ab">
            <xsl:element name="span">
                <xsl:attribute name="class">zone</xsl:attribute>
                <xsl:attribute name="id"><xsl:value-of select="@xml:id" /></xsl:attribute>
                    <xsl:apply-templates />
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="tei:lb">
        <br />
    </xsl:template>
    <xsl:template match="tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="src"><xsl:value-of select="current()[@xml:id]//tei:graphic/@url"/></xsl:attribute>
            <xsl:attribute name="usemap">#<xsl:value-of select="current()/@xml:id" /></xsl:attribute>
        </xsl:element>
        <xsl:element name="map">
            <xsl:attribute name="name"><xsl:value-of select="current()/@xml:id"/></xsl:attribute>
            <xsl:for-each select="tei:zone">
                <xsl:element name="area">
                    <xsl:attribute name="id"><xsl:value-of select="current()/@corresp" /></xsl:attribute>
                    <xsl:attribute name="coords"><xsl:value-of select="current()/@ulx"/>,<xsl:value-of select="current()/@uly"/>,<xsl:value-of select="current()/@lrx"/>,<xsl:value-of select="current()/@lry"/></xsl:attribute>
                    <xsl:attribute name="style">cursor: pointer</xsl:attribute>
                    <xsl:attribute name="shape">rect</xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:publicationStmt">
        <h3>Pubblicazione:</h3>
        <p><strong>Pubblicato da: </strong><xsl:value-of select="tei:publisher"/></p>
        <p><strong>Data: </strong><xsl:value-of select="tei:date"/></p>
        <p><strong>Disponibilità: </strong><xsl:value-of select="tei:availability"/></p>
    </xsl:template>
    <xsl:template match="tei:persName">
        <xsl:element name="span">
            <xsl:attribute name="class">persone_r</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:author">
        <xsl:element name="span">
            <xsl:attribute name="class">persone_r</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:title">
        <xsl:element name="span">
            <xsl:attribute name="class">Opere</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:placeName">
        <xsl:element name="span">
            <xsl:attribute name="class">Luoghi</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:settlement">
        <xsl:element name="span">
            <xsl:attribute name="class">Luoghi</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:pubPlace">
        <xsl:element name="span">
            <xsl:attribute name="class">Luoghi</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:country">
        <xsl:element name="span">
            <xsl:attribute name="class">Luoghi</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:geogName">
        <xsl:element name="span">
            <xsl:attribute name="class">Luoghi_n</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:title[@level='j']">
        <xsl:element name="span">
            <xsl:attribute name="class">Casa_ed_ri</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:publisher">
        <xsl:element name="span">
            <xsl:attribute name="class">Casa_ed_ri</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:date">
        <xsl:element name="span">
            <xsl:attribute name="class">Date</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:term[@ref='#Verbum']">
        <xsl:element name="span">
            <xsl:attribute name="class">Verbum</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:term[@ref='#Tema']">
        <xsl:element name="span">
            <xsl:attribute name="class">temi_motivi</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:foreign">
        <xsl:element name="span">
            <xsl:attribute name="class">testo_lingua</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:quote">
        <xsl:element name="span">
            <xsl:attribute name="class">citazioni</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:orgName">
        <xsl:element name="span">
            <xsl:attribute name="class">org</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:addName">
        <xsl:element name="span">
            <xsl:attribute name="class">epithet</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:abbr">
        <xsl:element name="span">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:expan">
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    <xsl:template match="tei:hi[@rend='italic']">
        <xsl:element name="em">
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>