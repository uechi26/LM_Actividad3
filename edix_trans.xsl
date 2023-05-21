<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
        <xsl:template match="ite/">
            <edix>
                <instituto>
                    <nombre><xsl:value-of select="@nombre"/></nombre>
                    <web><xsl:value-of select="@web"/></web>
                    <empresa><xsl:value-of select="empresa"/></empresa>
                    <telefono><xsl:value-of select="telefono"/></telefono>
                </instituto>
                <plantilla>
                    <xsl:for-each select="profesores/profesor">
                        <profesor>
                            <xsl:value-of select="@id"/>
                            <xsl:value-of select="@nombre"/>
                        </profesor>
                    </xsl:for-each>    
                    <xsl:value-of select="director"/>
                        <director>
                            <xsl:value-of select="@nombre"/>
                            <xsl:value-of select="@despacho"/>
                        </director>
                    <xsl:value-of select="jefe_estudios"/>
                        <jefe_estudios>
                            <xsl:value-of select="@id"/>
                            <xsl:value-of select="@nombre"/>
                        </jefe_estudios>
                </plantilla>
                <ciclos>
                    <xsl:for-each select="ciclos">
                        <ciclo>
                            <xsl:attribute name="id">
                                <xsl:value-of select="@id"/>
                            </xsl:attribute>
                            <xsl:value-of select="nombre"/>
                            <xsl:value-of select="grado"/>
                            <xsl:attribute name="año">
                                <xsl:value-of select="@año"/>
                            </xsl:attribute>
                        </ciclo>
                    </xsl:for-each> 
                </ciclos>
            </edix>
        </xsl:template>
</xsl:stylesheet>
