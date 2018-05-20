<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://sqlfairy.sourceforge.net/sqlfairy.xml">
<xsl:output method="text" encoding="utf-8" />

<xsl:template match="database">
[ &lt; TOP](/README.md)

# テーブル定義書
## テーブル名一覧
<xsl:for-each select="table_structure">- [<xsl:value-of select="@name"/>](#<xsl:value-of select="@name"/>)
</xsl:for-each>
<xsl:apply-templates select="table_structure"/>
</xsl:template>

<xsl:template match="table_structure">
&lt;a name="<xsl:value-of select="@name"/>"&gt;&lt;/a&gt;
## <xsl:value-of select="@name"/>
##### <xsl:value-of select="options/@Comment"/>
|NO|物理名|型|NULL|初期値|主キー|ユニーク|備考|
|----|----|----|----|----|----|----|----|
<xsl:apply-templates select="field"/>
</xsl:template>

<xsl:template match="field">|<xsl:value-of select="position()"/>|<xsl:value-of select="@Field"/>|<xsl:value-of select="@Type"/>|<xsl:if test="@Null='YES'">○</xsl:if>|<xsl:value-of select="@Default"/>|<xsl:if test="@Key='PRI'">○</xsl:if>|<xsl:if test="@Key='UNI'">○</xsl:if>|<xsl:value-of select="@Comment"/><xsl:text>&#xa;</xsl:text></xsl:template>

</xsl:stylesheet>