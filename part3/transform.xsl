<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Шаблон для кореневого елемента -->
  <xsl:template match="/passports">
    <html>
      <head>
        <title>Passport Information</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
          }
          .passport {
            display: block;
            background-color: #af9463;
            border: 2px solid #bb602b;
            padding: 15px;
            width: 300px;
            margin-bottom: 10px;
            border-radius: 8px;
            text-align: left;
            margin: 0 auto;
          }
          .passport h3 {
            margin: 0;
          }
          .passport p {
            font-size: 16px;
            margin: 5px 0;
          }
        </style>
      </head>
      <body>
        <h1>Passport Information</h1>
        <!-- Застосування шаблонів для кожного паспорта -->
        <xsl:apply-templates select="passport"/>
      </body>
    </html>
  </xsl:template>

  <!-- Шаблон для кожного паспорта -->
  <xsl:template match="passport">
    <div class="passport">
      <h3><xsl:value-of select="firstName"/> <xsl:value-of select="lastName"/></h3>
      <p><strong>Middle Name:</strong> <xsl:value-of select="middleName"/></p>
      <p><strong>Address:</strong> <xsl:value-of select="address"/></p>
      <p><strong>ID Number:</strong> <xsl:value-of select="idNumber"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>
