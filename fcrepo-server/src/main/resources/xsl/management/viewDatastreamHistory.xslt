<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:management="http://www.fedora.info/definitions/1/0/management/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    exclude-result-prefixes="management">
    <xsl:param name="fedora" />
    <xsl:output method="html" indent="yes" />
    <xsl:template match="management:datastreamHistory">
        <html>
            <head>
                <title>Datastream History HTML Presentation</title>
            </head>
            <body>
                <center>
                    <table width="784" border="0" cellpadding="0"
                        cellspacing="0">
                        <tr>
                            <td width="141" height="134" valign="top">
                                <img src="/{$fedora}/images/newlogo2.jpg"
                                    width="141" height="134" />
                            </td>
                            <td width="643" valign="top">
                                <center>
                                    <h2>Fedora Digital Object Datastream</h2>
                                    <h3>Datastream History View</h3>
                                </center>
                            </td>
                        </tr>
                    </table>
                    <hr />

                    <xsl:for-each select="/management:datastreamHistory/management:datastreamProfile">
                        <xsl:variable name="content-url">
                            <xsl:text>objects/</xsl:text>
                            <xsl:value-of select="encode-for-uri(@pid)" />
                            <xsl:text>/datastreams/</xsl:text>
                            <xsl:value-of select="@dsID" />
                            <xsl:text>/content?asOfVersionDate=</xsl:text>
                            <xsl:value-of select="management:dsCreateDate"></xsl:value-of>
                        </xsl:variable>


                        <table width="784" border="1" cellpadding="5"
                            cellspacing="5" bgcolor="silver">
                            <tr>
                                <td align="right">
                                    <strong>Object Identifier (PID):
                                </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="@pid" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Identifier
                                        (DSID):
                                </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="@dsID" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Label: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsLabel" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Version ID: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsVersionID" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Creation Date:
                                </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsCreateDate" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream State: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsState" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream MIME type: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsMIME" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Format URI: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsFormatURI" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Control Group:
                                </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsControlGroup" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Size: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsSize" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Versionable: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsVersionable" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Info Type: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsInfoType" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Location: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsLocation" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Location Type:
                                </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsLocationType" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Checksum Type:
                                </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsChecksumType" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <strong>Datastream Checksum: </strong>
                                </td>
                                <td align="left">
                                    <xsl:value-of select="management:dsChecksum" />
                                </td>
                            </tr>
                            <xsl:for-each select="management:dsAltID">
                                <tr>
                                    <td align="right">
                                        <strong>Datastream Alternate ID:
                                    </strong>
                                    </td>
                                    <td align="left">
                                        <xsl:value-of
                                            select="." />
                                    </td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <td align="right" colspan="2">
                                    <a href="/{$fedora}/{$content-url}">Content link to this
                                        Datastream version</a>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </xsl:for-each>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
