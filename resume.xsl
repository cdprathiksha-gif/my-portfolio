<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head><title>Resume</title></head>
  <body>
    <h1><xsl:value-of select="resume/personal/name"/></h1>
    <h2>Skills</h2>
    <ul>
      <xsl:for-each select="resume/skills/skill">
        <li><xsl:value-of select="@name"/> - <xsl:value-of select="@level"/></li>
      </xsl:for-each>
    </ul>
    <h2>Education</h2>
    <p><xsl:value-of select="resume/education/degree"/> - <xsl:value-of select="resume/education/college"/> (<xsl:value-of select="resume/education/year"/>)</p>
    <h2>Certifications</h2>
    <ul>
      <xsl:for-each select="resume/certifications/cert">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
    </ul>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
