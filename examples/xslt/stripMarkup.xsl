<?xml version="1.0" encoding="UTF-8"?>
<!--stripMarkup.xsl-->

<!--
  Licensed to the Apache Software Foundation (ASF) under one or more
  contributor license agreements.  See the NOTICE file distributed with
  this work for additional information regarding copyright ownership.
  The ASF licenses this file to You under the Apache License, Version 2.0
  (the "License"); you may not use this file except in compliance with
  the License.  You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->

<!-- $Id$ -->
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:ukm="http://www.legislation.gov.uk/schema/schemaLegislationMetadata.xsd">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <xsl:param name="versionParam" select="'1.0'"/> 
  
  <!-- ========================= -->
  <!-- root element: html -->
  <!-- ========================= -->
<xsl:template match="html">
  <Legislation DocumentURI="@ " IdURI="@" NumberOfProvisions="@" xsi:schemaLocation="http://www.legislation.gov.uk/schema/legislation.xsd" SchemaVersion="1.0" RestrictExtent="S" RestrictStartDate="@" xhtml:base="@">
 <ukm:Metadata>
   <dc:title>@head:title</dc:title>
   <dc:creator></dc:creator>
   <dc:subject></dc:subject>
   <dc:description>@head:meta:content</dc:description>
   <dc:publisher>@ </dc:publisher>
   <dc:contributor></dc:contributor>
   <dc:date></dc:date>
   <dc:type>@head:meta:content</dc:type>
   <dc:format>@head:meta:content</dc:format>
   <dc:identifier>@ </dc:identifier>
   <source></source>
   <dc:language>@ </dc:language>
   <dc:relation></dc:relation>
   <dc:coverage></dc:coverage>
   <dc:rights></dc:rights>
   <dc:modified>@ </dc:modified>
   <dct:valid>@ </dct:valid>
   <atom:link></atom:link>
 </ukm:Metadata>



  </Legislation>
</xsl:template>
</xsl:stylesheet>
