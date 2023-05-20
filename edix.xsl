<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="ite">
        <html>
            <head>
                <title>EDIX</title>
            </head>
            <body>
                <h1><xsl:value-of select="ite/@nombre"/></h1>
                <nav>
                    <ul>
                        <li><a href="#profesores">Profesores</a></li>
                        <li><a href="#director">Director</a></li>
                        <li><a href="#Jefe_estudios">Jefe de Estudios</a></li>
                        <li><a href="#ciclos">Ciclos</a></li>
                    </ul>
                </nav>
                <hr/>
                <div id="profesores">
                    <table border="3">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="profesores/profesor">
                            <tr>
                                <td><xsl:value-of select="id"/>
                                </td>
                                <td><xsl:value-of select="nombre"/>
                                </td>
                            </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>               
                </div>
                <div id="director">
                    <xsl:for-each select="director">
                        <h3>Nombre : <xsl:value-of select="nombre"/></h3>
                        <h4>Despacho : <xsl:value-of select="despacho"/></h4>
                    </xsl:for-each>
                </div>
                <div id="jefe_estudios">
                    <xsl:for-each select="jefe_estudios">
                        <h3>Nombre : <xsl:value-of select="nombre"/></h3>
                        <h4>Despacho : <xsl:value-of select="despacho"/></h4>
                    </xsl:for-each>
                </div>
                <div id="ciclo">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Grado</th>
                                <th>Año Decreto</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="nombre"/>
                                </td>
                                <td><xsl:value-of select="grado"/>
                                </td>
                                <td><xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>               
                </div>        
        
            </body>  
        </html>

</xsl:template>

</xsl:stylesheet>
