<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="ite">
        <html>
            <head>
                <title>EDIX</title>
                <link rel="stylesheet" href="style.css"></link>
            </head>
            <body>
                <div id="edix">
                    <h1><xsl:value-of select="@nombre"/></h1>
                </div>
                
                <nav >
                    <ul class="lista">
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

                <h1>Formulario de contacto</h1>
                <form action="procesarPeticion.jsp" method="get">
                    <fieldset>
                        <legend>Datos Personales:</legend>
                            <br/>
                            Nombre: <input type="text" name="nombre" placeholder="Escribe tu nombre" />
                            <br/>
                            <br/>
                            Apellidos: <input type="text" name="Apellidos" placeholder="Escribe tus apellidos"/>
                            <br/>
                            <br/>
                            Edad: <input type="number" min="18" max="100" step="1" name="edadNumber" placeholder="Edad" />
                            <br/>
                            <br/>
                            Email: <input type="email" name="email"/>
                            <br/>
                            <br/>
                            Teléfono: <input type="tel" name="telefono" placeholder="Escribe tu numero de telefono"/>
                            <br/>
                            <br/>
                            Fecha de Nacimiento: <input type="date" name="color"/>
                            <br/>
                            <br/>

                    </fieldset>
                    <br/>
                    <fieldset>
                        <legend>Datos Academicos</legend>
                            <br/>
                            <label for="estudios">Estudios</label>
                            <br/>
                            <input type="radio" name="estudios" value="S"/>Secundaria<br/>
                            <input type="radio" name="estudios" value="B"/>Bachillerato<br/>
                            <input type="radio" name="estudios" value="G"/>Grado<br/>
                            <input type="radio" name="estudios" value="M"/>Master<br/>
                            <br/>
                        <legend>Idiomas</legend>
                            <br/>
                            <label for="idiomas">Idiomas</label>
                            <br/>
                            <input type="checkbox" name="idiomas" value="E" />Español<br/>
                            <input type="checkbox" name="idiomas" value="I"/>Inglés<br/>
                            <input type="checkbox" name="idiomas" value="A"/>Alemán<br/>
                            <input type="checkbox" name="idiomas" value="F"/>Francés<br/>

                    </fieldset>
                
                
                
                
                </form>       
        
            </body>
            <footer>
                <div>
                    <h4>Empresa : <xsl:value-of select="empresa"/></h4>
                    <h4>Telefono : <xsl:value-of select="telefono"/></h4>
                    <h4>Web : <a href="https://institutotecnologico.edix.com"><xsl:value-of select="@web"/></a></h4>
                </div>
            
            </footer> 
        </html>

</xsl:template>

</xsl:stylesheet>
