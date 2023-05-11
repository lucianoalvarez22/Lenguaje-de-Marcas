<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="galeria">
<html>
<head>
<link ref="stylesheet" type="text/css" href="estilosgaleria.css"/>
</head>
<body>
  <h1>Galeria de <xsl:value-of select="@nombre"/></h1>
  <main>
  <xsl:apply-templates select="imagen"/>
  </main>
  </body>
  </html>  
  </xsl:template>
  
  <xsl:template match="imagen">
  <img src="{.}" alt="{@titulo}"/> <!-- EL punto decimos que estamos en el mismo directorio imagen y el ALT entre corchetes para coger el atributo titulo -->
  </xsl:template>
  
  
</xsl:stylesheet>
