<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
      <style>
      table {border-collapse: collapse;}
       td {border:2px solid red;}
       .col1, .col2 { padding-right:10px;}
       .col3 {text-align:center;}
      </style>
      </head>
      <body>
      <h1><xsl:value-of select="centro/@nombre"/></h1>
           <p><a href="{centro/@web}" target="_blank">Web del Centro </a></p>
     <table>
    <tr>
      <th class="col1">Nombre del ciclo</th>
      <th class="col2">Grado</th>
      <th class="col3">Año del título</th>
    </tr>
     <xsl:for-each select="centro/ciclos/ciclo">
     <tr>
      <td class="col1"><xsl:value-of select="nombre"/></td>
      <td class="col2"><xsl:value-of select="grado"/></td>
      <td class="col3"><xsl:value-of select="decretoTitulo/@año"/></td>
    </tr>
     </xsl:for-each>
    </table>
      </body>
    </html>
  </xsl:template>

<!--
  <xsl:template match="/">
    <html>
      <head>
      <style>
      table {border-collapse: collapse;}
       td {border:2px solid red;}
       .col1, .col2 { padding-right:10px;}
       .col3 {text-align:center;}
      </style>
      </head>
      <body>
      <h1><xsl:value-of select="centro/@nombre"/></h1>

      <p><a href="{centro/@web}" target="_blank">Web del Centro </a></p>
     <table>
    <tr>
      <th class="col1">Nombre del ciclo</th>
      <th class="col2">Grado</th>
      <th class="col3">Año del título</th>
    </tr>
     <xsl:apply-templates />
    </table>
      </body>
    </html>
  </xsl:template>


  <xsl:template match="ciclo">
    <tr>
      <td class="col1"><xsl:value-of select="nombre"/></td>
      <td class="col2"><xsl:value-of select="grado"/></td>
      <td class="col3"><xsl:value-of select="decretoTitulo/@año"/></td>
    </tr>
  </xsl:template>
  -->
</xsl:stylesheet>