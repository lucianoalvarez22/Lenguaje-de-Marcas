<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="pelicula">
  <html>
  <head>
  <link rel="stylesheet" type="text/css" href="Ejercicio11.css" />
  </head>
  <body>
    <h1>PLAN DE TRABAJO <em><xsl:value-of select="@titulo"/></em></h1>
    <h2>Director: <em><xsl:value-of select="@director"/></em></h2>
    <h3>Año producción: <em><xsl:value-of select="@año"/></em></h3>
    <table>
    <thead>
    <tr><th colspan="3">Responsables de localizaciones</th></tr>
    <tr><th>País</th><th>Nombre</th><th>Apellidos</th></tr>
    </thead>
    <tbody>    
      <xsl:apply-templates>
        <xsl:sort order="ascending" select="País"/>
      </xsl:apply-templates>
    </tbody>
     </table>
     <figure  id="cartel">
      <img src="{@cartel}" alt="cartel de la película"/>
     </figure>
    </body>
    </html>
  </xsl:template>
  
  <xsl:template match="localizacion">
  <tr>
      <td><xsl:value-of select="País"/></td>   
      <td><xsl:value-of select="responsable/nombre"/></td>   
      <td><xsl:value-of select="responsable/apellidos"/></td> 
  </tr>
  </xsl:template>
</xsl:stylesheet>
