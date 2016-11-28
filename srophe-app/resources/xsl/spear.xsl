<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://syriaca.org" xmlns:t="http://www.tei-c.org/ns/1.0" xmlns:x="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:saxon="http://saxon.sf.net/" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:local="http://syriaca.org/ns" exclude-result-prefixes="xs t s saxon" version="2.0">
    
    <!-- ================================================================== 
       Copyright 2013 New York University
       
       This file is part of the Syriac Reference Portal Places Application.
       
       The Syriac Reference Portal Places Application is free software: 
       you can redistribute it and/or modify it under the terms of the GNU 
       General Public License as published by the Free Software Foundation, 
       either version 3 of the License, or (at your option) any later 
       version.
       
       The Syriac Reference Portal Places Application is distributed in 
       the hope that it will be useful, but WITHOUT ANY WARRANTY; without 
       even the implied warranty of MERCHANTABILITY or FITNESS FOR A 
       PARTICULAR PURPOSE.  See the GNU General Public License for more 
       details.
       
       You should have received a copy of the GNU General Public License
       along with the Syriac Reference Portal Places Application.  If not,
       see (http://www.gnu.org/licenses/).
       
       ================================================================== --> 
    
    <!-- ================================================================== 
       spear.xsl
       
       This XSLT transforms tei.xml to html for SPEAR content.
       
       parameters:
       
        
       code by: 
        + Winona Salesky (wsalesky@gmail.com)
          for use with eXist-db
        + Tom Elliott (http://www.paregorios.org) 
          for the Institute for the Study of the Ancient World, New York
          University, under contract to Vanderbilt University for the
          NEH-funded Syriac Reference Portal project.
        + Winona Salesky for use with eXist-db
          
       funding provided by:
        + National Endowment for the Humanities (http://www.neh.gov). Any 
          views, findings, conclusions, or recommendations expressed in 
          this code do not necessarily reflect those of the National 
          Endowment for the Humanities.
       
       ================================================================== -->
    
    <!-- =================================================================== -->
    <!-- TEMPLATES -->
    <!-- =================================================================== -->
    
    <!-- Manuscript templates -->
    <!-- used by spear pages not real tei element -->
    <xsl:template match="t:aggregate-source">
        <div class="row title padding-top">
            <h1 class="col-md-8">
                <xsl:text>A Prosopography of </xsl:text>
                <xsl:call-template name="title"/>
            </h1>
            <!-- Call link icons (located in link-icons.xsl) -->
            <span class="padding-top">
                <xsl:call-template name="link-icons"/>
            </span>
        </div>
        <div style="margin:0 1em 1em; color: #999999;">
            <small>
                <a href="../documentation/terms.html#place-uri" title="Click to read more about Place URIs" class="no-print-link">
                    <span class="helper circle noprint">
                        <p>i</p>
                    </span>
                </a>
                <p>
                    <span class="srp-label">URI</span>
                    <xsl:text>: </xsl:text>
                    <span id="syriaca-id">
                        <!-- NOTE: temporary fix, the Perm URI will be found in header/sourceDesc -->
                        <xsl:value-of select="concat('http://syriaca.org/spear/aggregate.html?id=',$resource-id)"/>
                    </span>
                </p>
            </small>
        </div>
    </xsl:template>
    <xsl:template match="t:aggregate-title">
        <div class="row title padding-top">
            <h1 class="col-md-8">
                <xsl:text>SPEAR Factoids about </xsl:text>
                <xsl:call-template name="title"/>
            </h1>
            <!-- Call link icons (located in link-icons.xsl) -->
            <span class="padding-top">
                <xsl:call-template name="link-icons"/>
            </span>
        </div>
        <div style="margin:0 1em 1em; color: #999999;">
            <small>
                <a href="../documentation/terms.html#place-uri" title="Click to read more about Place URIs" class="no-print-link">
                    <span class="helper circle noprint">
                        <p>i</p>
                    </span>
                </a>
                <p>
                    <span class="srp-label">URI</span>
                    <xsl:text>: </xsl:text>
                    <span id="syriaca-id">
                        <xsl:value-of select="$resource-id"/>
                    </span>
                </p>
            </small>
        </div>
    </xsl:template>
    <xsl:template match="t:keyword-title">
        <div class="row title padding-top">
            <h1 class="col-md-8">
                <xsl:text>SPEAR Factoids about </xsl:text>
                <xsl:value-of select="substring-after(//tei:idno,'/keyword/')"/>
            </h1>
            <!-- Call link icons (located in link-icons.xsl) -->
            <span class="padding-top">
                <xsl:call-template name="link-icons"/>
            </span>
        </div>
        <div style="margin:0 1em 1em; color: #999999;">
            <small>
                <a href="../documentation/terms.html#place-uri" title="Click to read more about Place URIs" class="no-print-link">
                    <span class="helper circle noprint">
                        <p>i</p>
                    </span>
                </a>
                <p>
                    <span class="srp-label">URI</span>
                    <xsl:text>: </xsl:text>
                    <span id="syriaca-id">
                        <xsl:value-of select="$resource-id"/>
                    </span>
                </p>
            </small>
        </div>
    </xsl:template>
    <xsl:template match="t:factoid-title">
        <div class="row title padding-top">
            <h1 class="col-md-8">SPEAR Factoid </h1>
            <!-- Call link icons (located in link-icons.xsl) -->
            <span class="padding-top">
                <xsl:call-template name="link-icons"/>
            </span>
        </div>
        <div style="margin:0 1em 1em; color: #999999;">
            <small>
                <a href="../documentation/terms.html#place-uri" title="Click to read more about Place URIs" class="no-print-link">
                    <span class="helper circle noprint">
                        <p>i</p>
                    </span>
                </a>
                <p>
                    <span class="srp-label">URI</span>
                    <xsl:text>: </xsl:text>
                    <span id="syriaca-id">
                        <xsl:value-of select="$resource-id"/>
                    </span>
                </p>
            </small>
        </div>
    </xsl:template>
    <xsl:template match="t:spear-headwords">
        <xsl:call-template name="title"/>
    </xsl:template>
    <xsl:template match="t:factoid | t:div[@uri]">
        <div class="factoid">
            <xsl:if test="t:factoid-headword">
                <h4>
                    <xsl:call-template name="title"/>
                </h4>
            </xsl:if>
            <xsl:for-each select="descendant::t:div[@uri]">
                <xsl:for-each select="child::*[not(self::t:bibl)][not(self::t:listRelation)]">
                    <xsl:apply-templates mode="spear"/>
                </xsl:for-each>
            </xsl:for-each>
            <br/>
        </div>
    </xsl:template>
    <xsl:template match="t:aggregate ">
        <xsl:choose>
            <xsl:when test="t:div">
                <xsl:for-each select="t:div[t:listPerson/t:person/t:persName[. != '']]">
                    <xsl:sort select="xs:integer(substring-after(@uri,'-'))" order="ascending"/>
                    <p class="factoid indent">
                        <xsl:apply-templates mode="spear"/>
                        <xsl:text> </xsl:text>
                        <a href="factoid.html?id={string(@uri)}">See factoid page <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"/>
                        </a>
                    </p>
                </xsl:for-each>
                <xsl:for-each select="t:div[descendant::t:sex[. != '']]">
                    <xsl:sort select="xs:integer(substring-after(@uri,'-'))" order="ascending"/>
                    <p class="factoid indent">
                        <xsl:apply-templates mode="spear"/>
                        <xsl:text> </xsl:text>
                        <a href="factoid.html?id={string(@uri)}">See factoid page <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"/>
                        </a>
                    </p>
                </xsl:for-each>
                <xsl:for-each select="t:div[descendant::t:state[. != '']]">
                    <xsl:sort select="xs:integer(substring-after(@uri,'-'))" order="ascending"/>
                    <p class="factoid indent">
                        <xsl:apply-templates mode="spear"/>
                        <xsl:text> </xsl:text>
                        <a href="factoid.html?id={string(@uri)}">See factoid page <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"/>
                        </a>
                    </p>
                </xsl:for-each>
                <xsl:for-each select="t:div[descendant::t:occupation[. != '']]">
                    <xsl:sort select="xs:integer(substring-after(@uri,'-'))" order="ascending"/>
                    <p class="factoid indent">
                        <xsl:apply-templates mode="spear"/>
                        <xsl:text> </xsl:text>
                        <a href="factoid.html?id={string(@uri)}">See factoid page <span class="glyphicon glyphicon-circle-arrow-right" aria-hidden="true"/>
                        </a>
                    </p>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates mode="spear"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="t:spear-teiHeader">
        <p>
            <span class="srp-label">Editor: </span>
            <xsl:value-of select="descendant::t:titleStmt/t:editor[@role='creator']"/>
        </p>
        <xsl:if test="descendant::t:respStmt">
            <div>
                <span class="srp-label">Contributors: </span>
                <xsl:choose>
                    <xsl:when test="count(descendant::t:respStmt) &gt; 2">
                        <xsl:value-of select="count(descendant::t:respStmt)"/> contributors (
                            <a class="togglelink" data-toggle="collapse" data-target="#show-contributors" href="#show-contributors" data-text-swap="Hide"> See all &#160;<i class="glyphicon glyphicon-circle-arrow-right"/>
                        </a>)
                            <div class="collapse" id="show-contributors">
                            <ul>
                                <xsl:for-each select="descendant::t:respStmt">
                                    <li>
                                        <xsl:apply-templates select="."/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <ul>
                            <xsl:for-each select="descendant::t:respStmt">
                                <li>
                                    <xsl:apply-templates select="."/>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </xsl:otherwise>
                </xsl:choose>
            </div>
        </xsl:if>
        <xsl:if test="descendant::t:fileDesc/t:publicationStmt/t:date">
            <p>
                <span class="srp-label">Date of Publication: </span>
                <xsl:choose>
                    <xsl:when test="descendant::t:fileDesc/t:publicationStmt/t:date[1]/text() castable as xs:date">
                        <xsl:value-of select="format-date(xs:date(descendant::t:fileDesc/t:publicationStmt/t:date[1]), '[Y]')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="descendant::t:fileDesc/t:publicationStmt/t:date[1]"/>
                    </xsl:otherwise>
                </xsl:choose>
            </p>
        </xsl:if>
        <p>
            <span class="srp-label">Based on: </span>
            <ul class="list-unstyled indent">
                <xsl:apply-templates select="descendant::t:back/descendant::t:bibl" mode="footnote"/>
            </ul>
        </p>
    </xsl:template>
    <xsl:template match="t:spear-sources">
        <xsl:call-template name="sources"/>
    </xsl:template>
    <xsl:template mode="spear" match="*">
        <xsl:choose>
            <xsl:when test="self::t:bibl"/>
            <xsl:otherwise>
                <xsl:apply-templates mode="spear"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="t:sex | t:state | t:persName" mode="spear">
        <xsl:choose>
            <xsl:when test="self::t:persName = ''"/>
            <xsl:when test="self::t:persName[string-length(.) != 0]">
                <span class="srp-label">Name: </span>
                <xsl:apply-templates mode="plain"/>
            </xsl:when>
            <xsl:when test="self::t:sex">
                <span class="srp-label">Sex: </span>
                <xsl:apply-templates mode="plain"/>
            </xsl:when>
            <xsl:when test="@role">
                <span class="srp-label">
                    <xsl:value-of select="concat(upper-case(substring(@role,1,1)),substring(@role,2))"/>: </span>
                <xsl:apply-templates mode="plain"/>
            </xsl:when>
            <xsl:when test="@type">
                <span class="srp-label">
                    <xsl:value-of select="concat(upper-case(substring(@type,1,1)),substring(@type,2))"/>: </span>
                <xsl:apply-templates mode="plain"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates mode="plain"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="t:listRelation" mode="spear"/>
    <!-- Needs work -->
    <xsl:template match="t:spear-citation">
        <xsl:if test="t:bibl">
            <div class="well">
                <!-- Sources -->
                <div id="sources">
                    <h3>Sources</h3>
                    <p>
                        <small>Any information without attribution has been created following the Syriaca.org <a href="http://syriaca.org/documentation/">editorial guidelines</a>.</small>
                    </p>
                    <ul>
                        <xsl:apply-templates select="t:bibl" mode="footnote"/>
                    </ul>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>