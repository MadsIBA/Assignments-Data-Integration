<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output method="xml"/>

    <!-- 1st step -->
    <xsl:template match="/emails/email">
        <html>
            <head>
                <title>Letter</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="to">
        <b>To: </b>
        <xsl:apply-templates/>
        <br />
    </xsl:template>
    <xsl:template match="from">
        <b>From: </b>
        <xsl:apply-templates/>
        <br />
    </xsl:template>
    <xsl:template match="subject">
        <b>Subject: </b>
        <xsl:apply-templates/>
        <br />
    </xsl:template>
    <xsl:template match="message">
        <b>Message: </b>
        <xsl:apply-templates/>
        <br />
    </xsl:template>

</xsl:stylesheet>