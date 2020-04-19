<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns="http://www.w3.org/1999/xhtml" version="1.0">
    <xsl:output method="xml"/>

    <xsl:template match="cars">
        <html>
            <head>
                <title>Assignment XML.3.0</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <h1>Assignment XML.3.0</h1>
                <h2>Cars</h2>
                <table border="2">
                    <thead style="background-color:#28B4C9">
                        <th>ID</th>
                        <th>Year</th>
                        <th>Manufacturer</th>
                        <th>Model</th>
                        <th>Meter</th>
                        <th>Color</th>
                        <th>Price</th>
                        <th>Warranty</th>
                    </thead>
                    <tbody>
                        <xsl:apply-templates/>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td style="background-color:#ddd; text-align:center;" colspan="8">Made by Mads Møller</td>
                        </tr>
                    </tfoot>
                </table>
            </body>
        </html>
    </xsl:template>



    <xsl:template match="cars/car">
        <tr>
            <xsl:for-each select="car"/>
            <td>
                <xsl:value-of select="@id" />
            </td>
            <td>
                <xsl:value-of select="@year" />
            </td>
            <td>
                <xsl:value-of select="@manufacturer" />
            </td>
            <td>
                <xsl:value-of select="@model" />
            </td>
            <td>
                <xsl:value-of select="meter" />
            </td>
            <td bgcolor="{color}">
                <!-- <xsl:value-of select="color" /> -->
            </td>
            <td>
                <xsl:value-of select="price" />
            </td>

            <xsl:apply-templates select="dealersecurity"/>

        </tr>
    </xsl:template>

    <xsl:template match="dealersecurity">
        <td>
            <xsl:if test="@buyback='yes'">   
                yes <xsl:apply-templates/>
            </xsl:if>
            <xsl:if test="@buyback='no'">
                no <xsl:apply-templates/>
            </xsl:if>
        </td>
    </xsl:template>

</xsl:stylesheet>