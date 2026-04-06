<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <!--Plantilla principal-->
    <xsl:template match="/tarea5.xml">
        <html>
            <head>
                <title>Catálogo de libros</title>
                <style>
                    body {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        background-color: #f5f7fa;
                        color: #333;
                        margin: 20px;
                    }
                    body {
                        font-family: 'Segoe UI', sans-serif;
                        background-color: #f9f9f9;
                        margin: 40px;
                        color: #333;
                    }
                    body {
                        display: block;
                        margin: 8px;
                    }
                </style>
            </head>
            <body>
                <h1>Catálogo de libros</h1>
                <table>
                    <tr>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <!--Aplicar plantilla individual para cada libro-->
                    <xsl:apply-templates select="catalogo/libro"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <!--Plantilla para cada libro-->
    <xsl:template match="libro">
        <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>