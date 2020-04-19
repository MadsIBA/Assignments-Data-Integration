<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="xml" indent="yes" omit-xml-declaration="no" doctype-system="about:legacy-compat"/>

    <!-- The following rule matches the root element,
		 irrespective of name,
	     and creates an html outline with an apply templates somewhere
	-->
    <xsl:template match="/">
        <html>
            <head>
                <title>
                   BooksCanon
                </title>
                <meta charset="utf-8"/>
            </head>
            <body style="background-color:#030613;margin:0px">
                <xsl:for-each select="booksCanon/book">
                    <div style="background-color:#ff006a;color:white;font-size:1.4em;padding:4px">

                        <span style="font-weight:bold">
                            <xsl:value-of select="title"/>
                        </span>
                        
                        - Edition: 

                        <xsl:value-of select="edition"/>
                    </div>

                    <div style="background-color:#2196f3;color:#fff;margin-left:10px;margin-bottom:1em;font-size:1.2em;padding-left:1em;padding-bottom:0.5em">
                        <p>
                            Author: <xsl:value-of select="authors"/>
                        </p>
                        <p>
                            Publisher: <xsl:value-of select="publisher"/>
                        </p>
                        <p>
                            Pages: <xsl:value-of select="pages"/>
                        </p>
                        <p>
                            ISBN: <xsl:value-of select="isbn"/>
                        </p>
                        <p>
                            Price: <xsl:value-of select="price"/>&#160;<xsl:value-of select="currency"/>
                    </p>
                    <p>
                        <pre style="background-color:#4e4e4e;font-family:Times New Roman;">
                        <p>Comments:</p>
                                <xsl:value-of select="comments"/>
                        </pre>
                    </p>
                    </div>
                    <!-- here the following
                    rules wil place
                    content -->
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>




</xsl:stylesheet>