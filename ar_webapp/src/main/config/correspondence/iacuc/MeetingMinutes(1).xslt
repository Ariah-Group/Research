<?xml version="1.0" encoding="UTF-8"?>
<!--Designed and generated by Altova StyleVision Enterprise Edition 2011 - see http://www.altova.com/stylevision for more information.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:clitype="clitype" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:iso4217="http://www.xbrl.org/2003/iso4217" xmlns:ix="http://www.xbrl.org/2008/inlineXBRL" xmlns:java="java" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="http://xml.coeus.mit.edu/iacuc" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:altova="http://www.altova.com" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:svg="http://www.w3.org/2000/svg" exclude-result-prefixes="clitype fn iso4217 ix java link n1 xbrldi xbrli xlink xs xsi altova">
	<xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>
	<xsl:param name="SV_OutputFormat" select="'PDF'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:variable name="fo:layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="page-master-181280232-even" margin-left="0.60in" margin-right="0.60in" page-height="11in" page-width="8.50in">
				<fo:region-body margin-top="0.99in" margin-bottom="0.79in" column-count="1" column-gap="0.50in"/>
				<fo:region-before region-name="even-page-header" overflow="hidden" extent="0.69in"/>
			</fo:simple-page-master>
			<fo:simple-page-master master-name="page-master-181280232-odd" margin-left="0.60in" margin-right="0.60in" page-height="11in" page-width="8.50in">
				<fo:region-body margin-top="0.99in" margin-bottom="0.79in" column-count="1" column-gap="0.50in"/>
				<fo:region-before region-name="odd-page-header" overflow="hidden" extent="0.69in"/>
			</fo:simple-page-master>
			<fo:page-sequence-master master-name="page-master-181280232">
				<fo:repeatable-page-master-alternatives>
					<fo:conditional-page-master-reference master-reference="page-master-181280232-even" odd-or-even="even"/>
					<fo:conditional-page-master-reference master-reference="page-master-181280232-odd" odd-or-even="odd"/>
				</fo:repeatable-page-master-alternatives>
			</fo:page-sequence-master>
		</fo:layout-master-set>
	</xsl:variable>
	<xsl:variable name="altova:nPxPerIn" select="96"/>
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
			<fo:page-sequence force-page-count="no-force" master-reference="page-master-181280232" initial-page-number="auto" format="1">
				<fo:static-content flow-name="odd-page-header">
					<fo:block-container margin-top="0.30in">
						<fo:block>
							<fo:inline-container>
								<fo:block>
									<xsl:text>&#x200B;</xsl:text>
								</fo:block>
							</fo:inline-container>
							<fo:block text-align="center" margin="0pt">
								<fo:inline font-weight="bold">
									<xsl:text>Meeting Minutes</xsl:text>
								</fo:inline>
							</fo:block>
							<fo:block text-align="center">
								<fo:leader leader-pattern="rule" rule-thickness="2" leader-length="100%"/>
							</fo:block>
						</fo:block>
					</fo:block-container>
				</fo:static-content>
				<fo:static-content flow-name="even-page-header">
					<fo:block-container margin-top="0.30in">
						<fo:block>
							<fo:inline-container>
								<fo:block>
									<xsl:text>&#x200B;</xsl:text>
								</fo:block>
							</fo:inline-container>
							<fo:block text-align="center" margin="0pt">
								<fo:inline font-weight="bold">
									<xsl:text>Meeting Minutes</xsl:text>
								</fo:inline>
							</fo:block>
							<fo:block text-align="center">
								<fo:leader leader-pattern="rule" rule-thickness="2" leader-length="100%"/>
							</fo:block>
						</fo:block>
					</fo:block-container>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:for-each select="$XML">
							<xsl:for-each select="n1:Schedule">
								<fo:block>
									<fo:leader leader-pattern="space"/>
								</fo:block>
								<fo:inline-container>
									<fo:block>
										<xsl:text>&#x200B;</xsl:text>
									</fo:block>
								</fo:inline-container>
								<fo:table table-layout="fixed" width="100%" border-spacing="0">
									<fo:table-column column-width="1.340in"/>
									<xsl:for-each select="n1:ScheduleMasterData">
										<fo:table-column column-width="proportional-column-width(1)"/>
									</xsl:for-each>
									<xsl:variable name="altova:CurrContextGrid_10FD47F8" select="."/>
									<fo:table-body start-indent="0pt">
										<xsl:variable name="altova:tablerows">
											<fo:table-row>
												<fo:table-cell padding="0" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Committee Name</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<xsl:for-each select="n1:ScheduleMasterData">
													<fo:table-cell padding="0" display-align="center">
														<fo:block text-align="left">
															<fo:inline>
																<xsl:text>: </xsl:text>
															</fo:inline>
															<xsl:for-each select="n1:CommitteeName">
																<xsl:variable name="value-of-template_06C49060">
																	<xsl:apply-templates/>
																</xsl:variable>
																<xsl:choose>
																	<xsl:when test="contains(string($value-of-template_06C49060),'&#x200B;')">
																		<fo:block>
																			<xsl:copy-of select="$value-of-template_06C49060"/>
																		</fo:block>
																	</xsl:when>
																	<xsl:otherwise>
																		<fo:inline>
																			<xsl:copy-of select="$value-of-template_06C49060"/>
																		</fo:inline>
																	</xsl:otherwise>
																</xsl:choose>
															</xsl:for-each>
														</fo:block>
													</fo:table-cell>
												</xsl:for-each>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell padding="0" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Scheduled Date</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<xsl:for-each select="n1:ScheduleMasterData">
													<fo:table-cell padding="0" display-align="center">
														<fo:block text-align="left">
															<fo:inline>
																<xsl:text>: </xsl:text>
															</fo:inline>
															<xsl:for-each select="n1:ScheduledDate">
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
												</xsl:for-each>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell padding="0" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Scheduled Time</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<xsl:for-each select="n1:ScheduleMasterData">
													<fo:table-cell padding="0" display-align="center">
														<fo:block text-align="left">
															<fo:inline>
																<xsl:text>: </xsl:text>
															</fo:inline>
															<xsl:for-each select="n1:ScheduledTime">
																<xsl:variable name="value-of-template_06C48DC0">
																	<xsl:apply-templates/>
																</xsl:variable>
																<xsl:choose>
																	<xsl:when test="contains(string($value-of-template_06C48DC0),'&#x200B;')">
																		<fo:block>
																			<xsl:copy-of select="$value-of-template_06C48DC0"/>
																		</fo:block>
																	</xsl:when>
																	<xsl:otherwise>
																		<fo:inline>
																			<xsl:copy-of select="$value-of-template_06C48DC0"/>
																		</fo:inline>
																	</xsl:otherwise>
																</xsl:choose>
															</xsl:for-each>
														</fo:block>
													</fo:table-cell>
												</xsl:for-each>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell padding="0" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Place</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<xsl:for-each select="n1:ScheduleMasterData">
													<fo:table-cell padding="0" display-align="center">
														<fo:block text-align="left">
															<fo:inline>
																<xsl:text>: </xsl:text>
															</fo:inline>
															<xsl:for-each select="n1:Place">
																<xsl:variable name="value-of-template_06C48F80">
																	<xsl:apply-templates/>
																</xsl:variable>
																<xsl:choose>
																	<xsl:when test="contains(string($value-of-template_06C48F80),'&#x200B;')">
																		<fo:block>
																			<xsl:copy-of select="$value-of-template_06C48F80"/>
																		</fo:block>
																	</xsl:when>
																	<xsl:otherwise>
																		<fo:inline>
																			<xsl:copy-of select="$value-of-template_06C48F80"/>
																		</fo:inline>
																	</xsl:otherwise>
																</xsl:choose>
															</xsl:for-each>
														</fo:block>
													</fo:table-cell>
												</xsl:for-each>
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
								<xsl:for-each select="n1:ProtocolSubmission">
									<fo:block>
										<fo:leader leader-pattern="space"/>
									</fo:block>
									<fo:inline-container>
										<fo:block>
											<xsl:text>&#x200B;</xsl:text>
										</fo:block>
									</fo:inline-container>
									<fo:block margin="0pt">
										<fo:inline font-weight="bold" text-decoration="underline">
											<xsl:text>Protocol Details</xsl:text>
										</fo:inline>
									</fo:block>
									<xsl:for-each select="n1:ProtocolSummary">
										<xsl:for-each select="n1:ProtocolMasterData">
											<fo:block>
												<fo:leader leader-pattern="space"/>
											</fo:block>
											<fo:inline-container>
												<fo:block>
													<xsl:text>&#x200B;</xsl:text>
												</fo:block>
											</fo:inline-container>
											<fo:table table-layout="fixed" width="100%" border-spacing="0">
												<fo:table-column column-width="1.990in"/>
												<fo:table-column column-width="0.350in"/>
												<fo:table-column column-width="proportional-column-width(1)"/>
												<xsl:variable name="altova:CurrContextGrid_10FD45B8" select="."/>
												<fo:table-body start-indent="0pt">
													<xsl:variable name="altova:tablerows">
														<fo:table-row>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>Protocol Number</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:ProtocolNumber">
																		<xsl:variable name="value-of-template_06C49220">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_06C49220),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_06C49220"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_06C49220"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>Protocol Title</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:ProtocolTitle">
																		<xsl:variable name="value-of-template_06C49140">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_06C49140),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_06C49140"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_06C49140"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>Approval Date</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:ApprovalDate">
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
														<fo:table-row>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>Expiration Date</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:ExpirationDate">
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
														<fo:table-row>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>Principal Investigator</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<fo:inline>
																		<xsl:text>:</xsl:text>
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:PrincipleInvestigatorName">
																		<xsl:variable name="value-of-template_11F32A68">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_11F32A68),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_11F32A68"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_11F32A68"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
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
										</xsl:for-each>
									</xsl:for-each>
									<fo:block/>
									<fo:block>
										<fo:leader leader-pattern="space"/>
									</fo:block>
									<fo:inline font-weight="bold" text-decoration="underline">
										<xsl:text>Minutes details of the above protocol</xsl:text>
									</fo:inline>
									<fo:inline-container>
										<fo:block>
											<xsl:text>&#x200B;</xsl:text>
										</fo:block>
									</fo:inline-container>
									<xsl:if test="n1:Minutes">
										<fo:table table-layout="fixed" width="100%" border="solid 1pt gray" border-spacing="-1pt">
											<fo:table-column column-width="proportional-column-width(1)"/>
											<fo:table-column column-width="proportional-column-width(1)"/>
											<fo:table-column column-width="proportional-column-width(1)"/>
											<fo:table-column column-width="proportional-column-width(1)"/>
											<xsl:variable name="altova:CurrContextGrid_11F1A108" select="."/>
											<fo:table-header start-indent="0pt">
												<fo:table-row>
													<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
														<fo:block text-align="left">
															<fo:inline>
																<xsl:text>Entry Number</xsl:text>
															</fo:inline>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
														<fo:block text-align="left">
															<fo:inline>
																<xsl:text>Minute Entry</xsl:text>
															</fo:inline>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
														<fo:block text-align="left">
															<fo:inline>
																<xsl:text>Update User</xsl:text>
															</fo:inline>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
														<fo:block text-align="left">
															<fo:inline>
																<xsl:text>Update Timestamp</xsl:text>
															</fo:inline>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-header>
											<fo:table-body start-indent="0pt">
												<xsl:variable name="altova:tablerows">
													<xsl:for-each select="n1:Minutes">
														<fo:table-row>
															<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:EntryNumber">
																		<xsl:variable name="value-of-template_11F32988">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_11F32988),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_11F32988"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_11F32988"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:MinuteEntry">
																		<xsl:variable name="value-of-template_11F328A8">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_11F328A8),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_11F328A8"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_11F328A8"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:UpdateUser">
																		<xsl:variable name="value-of-template_11F327C8">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_11F327C8),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_11F327C8"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_11F327C8"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
																<fo:block text-align="left">
																	<xsl:for-each select="n1:UpdateTimestamp">
																		<xsl:variable name="value-of-template_11F326E8">
																			<xsl:apply-templates/>
																		</xsl:variable>
																		<xsl:choose>
																			<xsl:when test="contains(string($value-of-template_11F326E8),'&#x200B;')">
																				<fo:block>
																					<xsl:copy-of select="$value-of-template_11F326E8"/>
																				</fo:block>
																			</xsl:when>
																			<xsl:otherwise>
																				<fo:inline>
																					<xsl:copy-of select="$value-of-template_11F326E8"/>
																				</fo:inline>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:for-each>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</xsl:for-each>
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
									</xsl:if>
									<fo:block>
										<fo:leader leader-pattern="space"/>
									</fo:block>
									<fo:block text-align="center">
										<fo:leader leader-pattern="rule" rule-thickness="1" leader-length="100%"/>
									</fo:block>
								</xsl:for-each>
								<fo:block/>
								<fo:block>
									<fo:leader leader-pattern="space"/>
								</fo:block>								<fo:block>
									<fo:leader leader-pattern="space"/>
								</fo:block>
								<fo:inline font-weight="bold" text-decoration="underline">
									<xsl:text>Other Minutes</xsl:text>
								</fo:inline>
								<fo:inline-container>
									<fo:block>
										<xsl:text>&#x200B;</xsl:text>
									</fo:block>
								</fo:inline-container>
								<xsl:if test="n1:Minutes">
									<fo:table table-layout="fixed" width="100%" border="solid 1pt gray" border-spacing="-1pt">
										<fo:table-column column-width="proportional-column-width(1)"/>
										<fo:table-column column-width="proportional-column-width(1)"/>
										<fo:table-column column-width="proportional-column-width(1)"/>
										<fo:table-column column-width="proportional-column-width(1)"/>
										<xsl:variable name="altova:CurrContextGrid_11F1A108" select="."/>
										<fo:table-header start-indent="0pt">
											<fo:table-row>
												<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Entry Number</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Minute Entry</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Update User</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
													<fo:block text-align="left">
														<fo:inline>
															<xsl:text>Update Timestamp</xsl:text>
														</fo:inline>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-header>
										<fo:table-body start-indent="0pt">
											<xsl:variable name="altova:tablerows">
												<xsl:for-each select="n1:Minutes">
													<fo:table-row>
														<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
															<fo:block text-align="left">
																<xsl:for-each select="n1:EntryNumber">
																	<xsl:variable name="value-of-template_11F32988">
																		<xsl:apply-templates/>
																	</xsl:variable>
																	<xsl:choose>
																		<xsl:when test="contains(string($value-of-template_11F32988),'&#x200B;')">
																			<fo:block>
																				<xsl:copy-of select="$value-of-template_11F32988"/>
																			</fo:block>
																		</xsl:when>
																		<xsl:otherwise>
																			<fo:inline>
																				<xsl:copy-of select="$value-of-template_11F32988"/>
																			</fo:inline>
																		</xsl:otherwise>
																	</xsl:choose>
																</xsl:for-each>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
															<fo:block text-align="left">
																<xsl:for-each select="n1:MinuteEntry">
																	<xsl:variable name="value-of-template_11F328A8">
																		<xsl:apply-templates/>
																	</xsl:variable>
																	<xsl:choose>
																		<xsl:when test="contains(string($value-of-template_11F328A8),'&#x200B;')">
																			<fo:block>
																				<xsl:copy-of select="$value-of-template_11F328A8"/>
																			</fo:block>
																		</xsl:when>
																		<xsl:otherwise>
																			<fo:inline>
																				<xsl:copy-of select="$value-of-template_11F328A8"/>
																			</fo:inline>
																		</xsl:otherwise>
																	</xsl:choose>
																</xsl:for-each>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
															<fo:block text-align="left">
																<xsl:for-each select="n1:UpdateUser">
																	<xsl:variable name="value-of-template_11F327C8">
																		<xsl:apply-templates/>
																	</xsl:variable>
																	<xsl:choose>
																		<xsl:when test="contains(string($value-of-template_11F327C8),'&#x200B;')">
																			<fo:block>
																				<xsl:copy-of select="$value-of-template_11F327C8"/>
																			</fo:block>
																		</xsl:when>
																		<xsl:otherwise>
																			<fo:inline>
																				<xsl:copy-of select="$value-of-template_11F327C8"/>
																			</fo:inline>
																		</xsl:otherwise>
																	</xsl:choose>
																</xsl:for-each>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell border="solid 1pt gray" padding="0" display-align="center">
															<fo:block text-align="left">
																<xsl:for-each select="n1:UpdateTimestamp">
																	<xsl:variable name="value-of-template_11F326E8">
																		<xsl:apply-templates/>
																	</xsl:variable>
																	<xsl:choose>
																		<xsl:when test="contains(string($value-of-template_11F326E8),'&#x200B;')">
																			<fo:block>
																				<xsl:copy-of select="$value-of-template_11F326E8"/>
																			</fo:block>
																		</xsl:when>
																		<xsl:otherwise>
																			<fo:inline>
																				<xsl:copy-of select="$value-of-template_11F326E8"/>
																			</fo:inline>
																		</xsl:otherwise>
																	</xsl:choose>
																</xsl:for-each>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
												</xsl:for-each>
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
								</xsl:if>
							</xsl:for-each>
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