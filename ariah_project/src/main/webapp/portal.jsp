<%--
 Copyright 2005-2009 The Kuali Foundation
 
 Licensed under the Educational Community License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.opensource.org/licenses/ecl2.php
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.

Updates made after January 1, 2015 are :
Copyright 2015 The Ariah Group, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--%>
<%@page import="org.kuali.rice.kim.api.role.Role, org.kuali.rice.kim.api.role.RoleService, org.kuali.rice.kim.impl.role.RoleServiceImpl"%>
<%@page import="org.kuali.kra.infrastructure.KraServiceLocator,  org.kuali.rice.krad.service.BusinessObjectService,
        org.kuali.kra.infrastructure.RoleConstants, org.kuali.kra.infrastructure.Constants, java.util.*,
        org.kuali.rice.krad.util.GlobalVariables, org.kuali.kra.bo.UnitAdministratorType,
        org.kuali.kra.bo.UnitAdministrator, org.kuali.kra.bo.CoeusModule,
        org.kuali.kra.kim.bo.KcKimAttributes"%>
<%@ include file="/rice-portal/jsp/sys/riceTldHeader.jsp"%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>
<%
    List<String> roleIds = new ArrayList<String>();
    final String principalId = GlobalVariables.getUserSession().getPrincipalId();

    Map<String, String> qualifiedRoleAttributes = new HashMap<String, String>();
    RoleService roleService = KraServiceLocator.getService(RoleService.class);

    // check role for SYSTEM ADMIN tab
    Role roleSystemAdmin = roleService.getRoleByNamespaceCodeAndName(RoleConstants.ADMIN_ROLE_TYPE, RoleConstants.ROLE_SYSTEM_ADMIN);
    if (roleSystemAdmin != null) {
        roleIds.add(roleSystemAdmin.getId());
    }

    boolean hasPermSystemAdmin = roleService.principalHasRole(principalId, roleIds, qualifiedRoleAttributes);
    request.setAttribute("hasPermSystemAdmin", hasPermSystemAdmin);

    // check role for MAINTENANCE tab
    Role roleMaintenanceAdmin = roleService.getRoleByNamespaceCodeAndName(RoleConstants.ADMIN_ROLE_TYPE, RoleConstants.ROLE_SYSTEM_MAINTENANCE);

    roleIds.clear();

    if (roleMaintenanceAdmin != null) {
        roleIds.add(roleMaintenanceAdmin.getId());
    }

    boolean hasPermMaintAdmin = roleService.principalHasRole(principalId, roleIds, qualifiedRoleAttributes);
    request.setAttribute("hasPermMaintAdmin", hasPermMaintAdmin);

    // check Unit Admin Types to see if user has rights to see Administrative tab
    BusinessObjectService businessObjectService = KraServiceLocator.getService(BusinessObjectService.class);

    boolean hasAdministrativePerm = false;
    Map<String, String> filterCriteria = new HashMap<String, String>();
    filterCriteria.put("personId", principalId);
    Collection<UnitAdministrator> unitAdmins = businessObjectService.findMatching(UnitAdministrator.class, filterCriteria);

    if (unitAdmins != null) {
        Iterator<UnitAdministrator> iter = unitAdmins.iterator();
        while (iter.hasNext()) {
            UnitAdministrator unitAdmin = iter.next();
            if (unitAdmin.getUnitAdministratorType() != null) {
                String defaultGroupFlag = unitAdmin.getUnitAdministratorType().getDefaultGroupFlag();
                if (Constants.UNIT_ADMINISTRATOR_TYPE_GROUP_FLAG_UNIT.equalsIgnoreCase(defaultGroupFlag)
                        || Constants.UNIT_ADMINISTRATOR_TYPE_GROUP_FLAG_CENTRAL.equalsIgnoreCase(defaultGroupFlag)) {
                    hasAdministrativePerm = true;
                    break;
                }
            }
        }
    }

    request.setAttribute("hasAdministrativePerm", hasAdministrativePerm);

    // lookup up COEUS MODULES to see which ones are active
    boolean moduleActiveProposals = false;
    boolean moduleActiveAwards = false;
    boolean moduleActiveNegoatiations = false;
    boolean moduleActiveIrb = false;
    boolean moduleActiveConflict = false;
    boolean moduleActiveIacuc = false;

    Collection<CoeusModule> modules = businessObjectService.findAll(CoeusModule.class);

    Iterator<CoeusModule> modIter = modules.iterator();
    while (modIter.hasNext()) {
        CoeusModule module = modIter.next();

        if (CoeusModule.AWARD_MODULE_CODE.equals(module.getModuleCode())) {
            if (module.isActive()) {
                moduleActiveAwards = true;
            }
        }
        if (CoeusModule.PROPOSAL_DEVELOPMENT_MODULE_CODE.equals(module.getModuleCode())) {
            if (module.isActive()) {
                moduleActiveProposals = true;
            }
        }
        if (CoeusModule.NEGOTIATIONS_MODULE_CODE.equals(module.getModuleCode())) {
            if (module.isActive()) {
                moduleActiveNegoatiations = true;
            }
        }
        if (CoeusModule.IRB_MODULE_CODE.equals(module.getModuleCode())) {
            if (module.isActive()) {
                moduleActiveIrb = true;
            }
        }
        if (CoeusModule.COI_DISCLOSURE_MODULE_CODE.equals(module.getModuleCode())) {
            if (module.isActive()) {
                moduleActiveConflict = true;
            }
        }
        if (CoeusModule.IACUC_PROTOCOL_MODULE_CODE.equals(module.getModuleCode())) {
            if (module.isActive()) {
                moduleActiveIacuc = true;
            }
        }
    }

    request.setAttribute("moduleActiveProposals", moduleActiveProposals);
    request.setAttribute("moduleActiveAwards", moduleActiveAwards);
    request.setAttribute("moduleActiveNegoatiations", moduleActiveNegoatiations);
    request.setAttribute("moduleActiveIrb", moduleActiveIrb);
    request.setAttribute("moduleActiveConflict", moduleActiveConflict);
    request.setAttribute("moduleActiveIacuc", moduleActiveIacuc);
%>
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
        <title><c:out value="${ConfigProperties.portal.title}"/></title>
        <c:forEach items="${fn:split(ConfigProperties.portal.css.files, ',')}" var="cssFile">
            <c:if test="${fn:length(fn:trim(cssFile)) > 0}">
                <link href="${pageContext.request.contextPath}/${fn:trim(cssFile)}" rel="stylesheet" type="text/css" />
            </c:if>
        </c:forEach>
        <c:forEach items="${fn:split(ConfigProperties.portal.javascript.files, ',')}" var="javascriptFile">
            <c:if test="${fn:length(fn:trim(javascriptFile)) > 0}">
                <script type="text/javascript" src="${ConfigProperties.application.url}/${fn:trim(javascriptFile)}"></script>
            </c:if>
        </c:forEach> 
        <script type="text/javascript" >
            if (top.location != self.location) {
                top.location = self.location;
            }
        </script>
    </head>
    <body>
        <div id="mod_divHeader">
           <div class="mod_container" style="min-height: 45px;">
                <div id="mod_logoheader">
                    <img src="static/images/logo.png" height="70" alt="Institutional Logo"/>
                </div>   
                <div id="mod_mainnavmenu">
                    <ul class="mod_navigation navbar-right">
                        <li><a href="portal.do?selectedTab=portalResearcherBody">Researcher</a></li>
                        <li><a href="portal.do?selectedTab=portalReportsBody">Reports</a></li>
                        <li><a href="portal.do?selectedTab=portalMyAccountBody">My Account</a></li>
                            <c:if test="${hasAdministrativePerm eq true}">
                            <li><a href="portal.do?selectedTab=portalCentralAdminBody">Administrative</a></li>
                            </c:if>       
                            <c:if test="${hasPermMaintAdmin eq true}">
                            <li><a href="portal.do?selectedTab=portalMaintenanceBody">Maintenance</a></li>
                            </c:if>                        
                            <c:if test="${hasPermSystemAdmin eq true}">
                            <li><a href="portal.do?selectedTab=portalSystemAdminBody">System Admin</a></li>
                            </c:if>
                    </ul>
                </div>       
            </div>
            <div class="mod_toolbarbackground">
                <div class="mod_container" style="position: relative; clear:both;">
                    <div class="mod_navbarbottom">
                        <ul>
                            <c:if test="${ ConfigProperties.displayEnvironment.enabled == 'true' }">
                                <c:if test="${ ConfigProperties.displayEnvironment.highlightcolor == '' }">
                                    <li><a href="#" class="portal_link" style="text-decoration: none">${ConfigProperties.displayEnvironment}</a></li>
                                    </c:if>
                                    <c:if test="${ ConfigProperties.displayEnvironment.highlightcolor != '' }">
                                    <li><a href="#" class="portal_link" style="color: ${ ConfigProperties.displayEnvironment.highlightcolor};text-decoration: none">${ConfigProperties.displayEnvironment}</a></li>
                                    </c:if>                                

                            </c:if>
                            <li>
                                <portal:portalLink displayTitle="false" title='Search' url='${ConfigProperties.workflow.documentsearch.base.url}'>Search</portal:portalLink>
                                </li>
                                <li>
                                <portal:portalLink displayTitle="false" title='Action List' url='${ConfigProperties.kew.url}/ActionList.do'>Action List</portal:portalLink>
                                </li>
                                <li><a href="portal.do?selectedTab=portalSupport" >Help & Support</a></li>
                                <li><a href="logout.do">Logout: ${UserSession.loggedInUserPrincipalName}</a></li>
                                <c:if test="${ConfigProperties.displayVersion.enabled == 'true'}">
                                <li>&nbsp;&nbsp;<span id="build">${ConfigProperties.displayVersion}</span></li>
                                </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <c:if test="${ConfigProperties.feedback.link.enabled == 'true'}">
            <div id="feedback">
                <a class="portal_link" href="<bean:message key="${ConfigProperties.feedback.link}"/>" target="_blank" title="<bean:message key="${ConfigProperties.feedback.linkText}" />">${ConfigProperties.feedback.linkText}</a>
            </div>        
        </c:if>

        <c:choose>
            <c:when test='${!empty param.channelTitle && !empty gotoUrl}'>
                <c:if test="${!empty param.backdoorId}">
                    <c:set var="channelUrl" value="${gotoUrl}?backdoorId=${param.backdoorId}&methodToCall.login=1"/>
                </c:if>
                <div id="iframe_portlet_container_div">
                    <portal:iframePortletContainer channelTitle="${param.channelTitle}" channelUrl="${gotoUrl}" />
                </div>
            </c:when>
            <c:otherwise>
                <table border="0" width="100%"  cellspacing="0" cellpadding="0" id="iframe_portlet_container_table">
                    <tr valign="top" bgcolor="#FFFFFF">
                        <td width="15" class="leftback-focus">&nbsp;</td>
                        <c:choose>
                            <c:when test='${sessionScope.selectedTab == "portalReportsBody"}'>
                                <portal:portalReports />
                            </c:when>

                            <c:when test='${sessionScope.selectedTab == "portalMyAccountBody"}'>
                                <portal:portalMyAccount />
                            </c:when>  

                            <c:when test='${sessionScope.selectedTab == "portalSupport"}'>
                                <portal:portalSupport />
                            </c:when>                             

                            <c:when test='${sessionScope.selectedTab == "portalCentralAdminBody"}'>
                                <portal:portalCentralAdminBody />
                            </c:when>

                            <c:when test='${sessionScope.selectedTab == "portalMaintenanceBody"}'>
                                <portal:portalMaintenanceBody />
                            </c:when>
                            <c:when test='${sessionScope.selectedTab == "portalSystemAdminBody"}'>
                                <portal:portalSystemAdminBody />
                            </c:when>

                            <c:otherwise>
                                <td class="content" valign="top">
                                    <channel:messageOfTheDay/>

                                    <c:if test="${moduleActiveProposals eq true}">
                                        <channel:researcherProposals />
                                    </c:if>  
                                    <c:if test="${moduleActiveAwards eq true}">
                                        <channel:researcherAwards />
                                    </c:if>  
                                </td>
                                <td class="content" valign="top">

                                    <c:if test="${moduleActiveIrb eq true}">
                                        <channel:researcherIRBProtocols/>
                                    </c:if>

                                    <c:if test="${moduleActiveConflict eq true}">
                                        <channel:researcherCompliance/>
                                    </c:if> 

                                </td>
                                <td class="content" valign="top">
                                    <c:if test="${moduleActiveIacuc eq true}">
                                        <channel:researcherIACUCProtocols/>   
                                    </c:if> 

                                    <c:if test="${moduleActiveNegoatiations eq true}">
                                        <channel:researcherNegotiations />
                                    </c:if>  
                                </td>
                            </c:otherwise>
                        </c:choose>

                    </tr>
                </table>
            </c:otherwise>
        </c:choose>

        <div id="footer-copyright"> <bean:message key="app.copyright" /></div>
    </body>
</html>