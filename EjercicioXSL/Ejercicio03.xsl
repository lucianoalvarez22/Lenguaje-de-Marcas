<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="bib"> <!-- Nos situamos en bib -->
  <html>
  <head>
  </head>
  <body>
  <table>
  <tr><th>Precio</th><th>Nombre</th><th>Año</th></tr>
  <xsl:apply-templates/> <!-- APlica todas las plantillas que le ponga debajo -->
  </table>
  </body>
  </html>
  </xsl:template>
  
  <!-- PRIMERA PLANTILLA LIBRO  FUERA DEL PRIMER TEMPLATE-->
  <xsl:template match="libro">
  <tr>
  <td><xsl:value-of select="precio"/></td>
  <td><xsl:value-of select="titulo"/></td>
  <td><xsl:value-of select="@año"/></td>
  </tr>
  </xsl:template>
  
  
</xsl:stylesheet>
