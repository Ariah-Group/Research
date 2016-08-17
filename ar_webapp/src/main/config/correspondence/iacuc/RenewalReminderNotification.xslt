<?xml version="1.0" encoding="UTF-8"?>
<!--Designed and generated by Altova StyleVision Enterprise Edition 2011 - see http://www.altova.com/stylevision for more information.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:clitype="clitype" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:iso4217="http://www.xbrl.org/2003/iso4217" xmlns:ix="http://www.xbrl.org/2008/inlineXBRL" xmlns:java="java" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="http://xml.coeus.mit.edu/iacuc" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:altova="http://www.altova.com" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" exclude-result-prefixes="clitype fn iso4217 ix java link n1 xbrldi xbrli xlink xs xsi altova">
	<xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>
	<xsl:param name="SV_OutputFormat" select="'PDF'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="page-master-318600176" margin-left="0.60in" margin-right="0.60in" page-height="11in" page-width="8.50in">
				<fo:region-body margin-top="0.79in" margin-bottom="0.79in" column-count="1" column-gap="0.50in"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:variable name="altova:nPxPerIn" select="96"/>
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence force-page-count="no-force" master-reference="page-master-318600176" initial-page-number="auto" format="1">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<fo:inline-container>
							<fo:block>
								<xsl:text>&#x200B;</xsl:text>
							</fo:block>
						</fo:inline-container>
						<fo:table width="100%" table-layout="fixed" border-spacing="2pt">
							<fo:table-column column-width="90%"/>
							<fo:table-column column-width="10%"/>
							<xsl:variable name="altova:CurrContextGrid_159C7880" select="."/>
							<fo:table-body start-indent="0pt">
								<xsl:variable name="altova:tablerows">
									<fo:table-row>
										<fo:table-cell font-size="10pt" padding="0" display-align="center">
											<fo:block text-align="left">
												<fo:inline>
													<xsl:text>&#160;</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell font-size="10pt" padding="0" display-align="center">
											<fo:block text-align="right">
												<fo:inline>
													<xsl:text>&#160;</xsl:text>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="2" padding="0" display-align="center">
											<fo:block text-align="left">
												<fo:block text-align="center">
													<fo:leader leader-pattern="rule" rule-thickness="2" leader-length="100%" color="black"/>
												</fo:block>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:variable>
								<xsl:choose>
									<xsl:when test="string($altova:tablerows)">
										<xsl:copy-of select="$altova:tablerows"/>
									</xsl:when>
									<xsl:otherwise>
										<fo:table-row>
											<fo:table-cell>
												<fo:block/>
											</fo:table-cell>
										</fo:table-row>
									</xsl:otherwise>
								</xsl:choose>
							</fo:table-body>
						</fo:table>
						<fo:block>
							<fo:leader leader-pattern="space"/>
						</fo:block>
						<xsl:for-each select="$XML">
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<xsl:for-each select="n1:Correspondence">
								<fo:block>
									<fo:leader leader-pattern="space"/>
								</fo:block>
								<fo:inline-container>
									<fo:block>
										<xsl:text>&#x200B;</xsl:text>
									</fo:block>
								</fo:inline-container>
								<fo:table font-family="inherit" table-layout="fixed" width="100%" border-spacing="2pt">
									<fo:table-column column-width="1.580in"/>
									<fo:table-column column-width="0.430in"/>
									<fo:table-column column-width="6.430in"/>
									<xsl:variable name="altova:CurrContextGrid_15F21588" select="."/>
									<fo:table-body start-indent="0pt">
										<xsl:variable name="altova:tablerows">
											<fo:table-row>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>To:</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left"/>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<xsl:for-each select="n1:Protocol">
															<xsl:for-each select="n1:Investigator">
																<xsl:for-each select="n1:Person">
																	<xsl:for-each select="n1:Fullname">
																		<xsl:variable name="value-of-template_123CDB48">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_123CDB48),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_123CDB48"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_123CDB48"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>From:</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left"/>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<xsl:for-each select="n1:Protocol">
															<xsl:for-each select="n1:Submissions">
																<xsl:for-each select="n1:CommitteeMember">
																	<xsl:for-each select="n1:Person">
																		<xsl:for-each select="n1:Fullname">
																			<xsl:variable name="value-of-template_123CE5C8">
																				<xsl:apply-templates/>
																			</xsl:variable>
																			<xsl:choose>
																				<xsl:when test="contains(string($value-of-template_123CE5C8),'&#x200B;')">
																					<fo:block>
																						<xsl:copy-of select="$value-of-template_123CE5C8"/>
																					</fo:block>
																				</xsl:when>
																				<xsl:otherwise>
																					<fo:inline>
																						<xsl:copy-of select="$value-of-template_123CE5C8"/>
																					</fo:inline>
																				</xsl:otherwise>
																			</xsl:choose>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
														<fo:inline>
															<xsl:text>, Chair</xsl:text>
														</fo:inline>
														<fo:block/>
														<xsl:for-each select="n1:Protocol">
															<xsl:for-each select="n1:Submissions">
																<xsl:for-each select="n1:CommitteeMasterData">
																	<xsl:for-each select="n1:CommitteeName">
																		<xsl:variable name="value-of-template_123CE4E8">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_123CE4E8),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_123CE4E8"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_123CE4E8"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Date:</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left"/>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<xsl:for-each select="n1:CurrentDate">
															<fo:inline>
																<xsl:value-of select="format-number(number(substring(string(string(.)), 6, 2)), '00')"/>
																<xsl:text> / </xsl:text>
																<xsl:value-of select="format-number(number(substring(string(string(.)), 9, 2)), '00')"/>
																<xsl:text> / </xsl:text>
																<xsl:value-of select="format-number(number(substring(string(string(string(.))), 1, 4)), '0000')"/>
															</fo:inline>
														</xsl:for-each>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row height="0.31in">
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Committee Action:</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left"/>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Renewal Reminder Notification</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Action Date:</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left"/>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<xsl:for-each select="n1:Protocol">
															<xsl:for-each select="n1:Submissions">
																<xsl:for-each select="n1:SubmissionDetails">
																	<xsl:for-each select="n1:ActionType">
																		<xsl:for-each select="n1:ActionDate">
																			<fo:inline>
																				<xsl:value-of select="format-number(number(substring(string(string(.)), 6, 2)), '00')"/>
																				<xsl:text> / </xsl:text>
																				<xsl:value-of select="format-number(number(substring(string(string(.)), 9, 2)), '00')"/>
																				<xsl:text> / </xsl:text>
																				<xsl:value-of select="format-number(number(substring(string(string(string(.))), 1, 4)), '0000')"/>
																			</fo:inline>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row height="0.38in">
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Protocol Number:</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left"/>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<xsl:for-each select="n1:Protocol">
															<xsl:for-each select="n1:ProtocolMasterData">
																<xsl:for-each select="n1:ProtocolNumber">
																	<xsl:variable name="value-of-template_123CE328">
																		<xsl:apply-templates/>
																	</xsl:variable>
																	<xsl:choose>
																		<xsl:when test="contains(string($value-of-template_123CE328),'&#x200B;')">
																			<fo:block>
																				<xsl:copy-of select="$value-of-template_123CE328"/>
																			</fo:block>
																		</xsl:when>
																		<xsl:otherwise>
																			<fo:inline>
																				<xsl:copy-of select="$value-of-template_123CE328"/>
																			</fo:inline>
																		</xsl:otherwise>
																	</xsl:choose>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row height="0.20in">
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Study Title:</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left"/>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<xsl:for-each select="n1:Protocol">
															<xsl:for-each select="n1:ProtocolMasterData">
																<xsl:for-each select="n1:ProtocolTitle">
																	<xsl:variable name="value-of-template_123CE088">
																		<xsl:apply-templates/>
																	</xsl:variable>
																	<xsl:choose>
																		<xsl:when test="contains(string($value-of-template_123CE088),'&#x200B;')">
																			<fo:block>
																				<xsl:copy-of select="$value-of-template_123CE088"/>
																			</fo:block>
																		</xsl:when>
																		<xsl:otherwise>
																			<fo:inline>
																				<xsl:copy-of select="$value-of-template_123CE088"/>
																			</fo:inline>
																		</xsl:otherwise>
																	</xsl:choose>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Expiration Date:</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left"/>
												</fo:table-cell>
												<fo:table-cell padding="2pt" display-align="center">
													<fo:block text-align="left">
														<xsl:for-each select="n1:Protocol">
															<xsl:for-each select="n1:ProtocolMasterData">
																<xsl:for-each select="n1:ExpirationDate">
																	<fo:inline>
																		<xsl:value-of select="format-number(number(substring(string(string(.)), 6, 2)), '00')"/>
																		<xsl:text> / </xsl:text>
																		<xsl:value-of select="format-number(number(substring(string(string(.)), 9, 2)), '00')"/>
																		<xsl:text> / </xsl:text>
																		<xsl:value-of select="format-number(number(substring(string(string(string(.))), 1, 4)), '0000')"/>
																	</fo:inline>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</xsl:variable>
										<xsl:choose>
											<xsl:when test="string($altova:tablerows)">
												<xsl:copy-of select="$altova:tablerows"/>
											</xsl:when>
											<xsl:otherwise>
												<fo:table-row>
													<fo:table-cell>
														<fo:block/>
													</fo:table-cell>
												</fo:table-row>
											</xsl:otherwise>
										</xsl:choose>
									</fo:table-body>
								</fo:table>
								<fo:block>
									<fo:leader leader-pattern="space"/>
								</fo:block>
							</xsl:for-each>
							<fo:block/>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:inline-container>
								<fo:block>
									<xsl:text>&#x200B;</xsl:text>
								</fo:block>
							</fo:inline-container>
							<fo:block margin="0pt">
								<fo:inline>
									<xsl:text>Above mentioned protocol will be due for an Annual Review on â€“ANNUAL REVIEW DATE-. Please submit an annual report in sufficient time for the IACUC to review and approve the continuation by â€“ANNUAL REVIEW DATE-. The IACUC must suspend your approval to use animals if the annual report is not submitted and approved before â€“ANNUAL REVIEW DATE-.</xsl:text>
								</fo:inline>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:inline-container>
								<fo:block>
									<xsl:text>&#x200B;</xsl:text>
								</fo:block>
							</fo:inline-container>
							<fo:block margin="0pt">
								<fo:inline>
									<xsl:text>Please Note: Annual reviews cannot be approved unless all personnel named on the protocol are up to date with Module 1 training requirements.</xsl:text>
								</fo:inline>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:inline-container>
								<fo:block>
									<xsl:text>&#x200B;</xsl:text>
								</fo:block>
							</fo:inline-container>
							<fo:block margin="0pt">
								<fo:inline>
									<xsl:text>Thank you.</xsl:text>
								</fo:inline>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
							<fo:block>
								<fo:leader leader-pattern="space"/>
							</fo:block>
						</xsl:for-each>
					</fo:block>
					<fo:block id="SV_RefID_PageTotal"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
	<xsl:template name="double-backslash">
		<xsl:param name="text"/>
		<xsl:param name="text-length"/>
		<xsl:variable name="text-after-bs" select="substring-after($text, '\')"/>
		<xsl:variable name="text-after-bs-length" select="string-length($text-after-bs)"/>
		<xsl:choose>
			<xsl:when test="$text-after-bs-length = 0">
				<xsl:choose>
					<xsl:when test="substring($text, $text-length) = '\'">
						<xsl:value-of select="concat(substring($text,1,$text-length - 1), '\\')"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$text"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="concat(substring($text,1,$text-length - $text-after-bs-length - 1), '\\')"/>
				<xsl:call-template name="double-backslash">
					<xsl:with-param name="text" select="$text-after-bs"/>
					<xsl:with-param name="text-length" select="$text-after-bs-length"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="altova:MakeValueAbsoluteIfPixels">
		<xsl:param name="sValue"/>
		<xsl:variable name="sBeforePx" select="substring-before($sValue, 'px')"/>
		<xsl:choose>
			<xsl:when test="$sBeforePx">
				<xsl:variable name="nLengthOfInteger">
					<xsl:call-template name="altova:GetCharCountOfIntegerAtEndOfString">
						<xsl:with-param name="sText" select="$sBeforePx"/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:variable name="nPosOfInteger" select="string-length($sBeforePx) - $nLengthOfInteger + 1"/>
				<xsl:variable name="nValuePx" select="substring($sBeforePx, $nPosOfInteger)"/>
				<xsl:variable name="nValueIn" select="number($nValuePx) div number($altova:nPxPerIn)"/>
				<xsl:variable name="nLengthBeforeInteger" select="string-length($sBeforePx) - $nLengthOfInteger"/>
				<xsl:variable name="sRest">
					<xsl:call-template name="altova:MakeValueAbsoluteIfPixels">
						<xsl:with-param name="sValue" select="substring-after($sValue, 'px')"/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:value-of select="concat(substring($sBeforePx, 1, $nLengthBeforeInteger), string($nValueIn), 'in', $sRest)"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$sValue"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="altova:GetCharCountOfIntegerAtEndOfString">
		<xsl:param name="sText"/>
		<xsl:variable name="sLen" select="string-length($sText)"/>
		<xsl:variable name="cLast" select="substring($sText, $sLen)"/>
		<xsl:choose>
			<xsl:when test="number($cLast) &gt;= 0 and number($cLast) &lt;= 9">
				<xsl:variable name="nResultOfRest">
					<xsl:call-template name="altova:GetCharCountOfIntegerAtEndOfString">
						<xsl:with-param name="sText" select="substring($sText, 1, $sLen - 1)"/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:value-of select="$nResultOfRest + 1"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>0</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
